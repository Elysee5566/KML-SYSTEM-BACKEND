
from datetime import timedelta
from decimal import Decimal

from django.conf import settings
from django.db import transaction
from django.utils import timezone

from users.utils import send_email
from loans.models import Loan


@transaction.atomic
def process_reloan(loan: Loan):
    # Lock and retrieve the latest version of the original loan.
    loan = (
        Loan.objects
        .select_for_update()
        .select_related("client", "loan_type")
        .get(pk=loan.pk)
    )

    # Prevent duplicate reloan.
    if loan.status == "reloaned":
        raise Exception(
            f"Loan #{loan.id} has already been reloaned"
        )

    # A fully cleared loan cannot generate a reloan.
    if loan.remaining_balance <= 0:
        raise Exception(
            f"Loan #{loan.id} is fully cleared. "
            "No outstanding balance to reloan."
        )

    # Ensure the loan type exists.
    if loan.loan_type is None:
        raise Exception(
            f"Loan #{loan.id} has no loan type configured."
        )

    # Check business eligibility.
    if not loan.is_eligible_for_reloan():
        raise Exception(
            f"Loan #{loan.id} is not eligible for reloan."
        )

    # Entire outstanding balance becomes the new principal.
    new_principal = loan.remaining_balance

    # Calculate interest for the new loan.
    interest_rate = (
        loan.loan_type.interest_rate / Decimal("100")
    )

    new_interest = (
        new_principal * interest_rate
    ).quantize(Decimal("0.01"))

    # Current repayment configuration is expressed in days.
    new_due_date = (
        timezone.now().date()
        + timedelta(
            days=loan.loan_type.repayment_period_value
        )
    )

    # Create the new loan.
    new_loan = Loan.objects.create(
        client=loan.client,
        loan_type=loan.loan_type,
        application=None,
        parent_loan=loan,
        loan_amount=new_principal,
        interest_amount=new_interest,
        remaining_balance=new_principal + new_interest,
        disbursement_date=timezone.now().date(),
        repayment_due_date=new_due_date,
        status="active",
    )

    # Mark the original loan as reloaned.
    loan.status = "reloaned"
    loan.save(update_fields=["status"])

    # Prepare notification details.
    payment_url = f"{settings.FRONTEND_URL}/payments"

    email_context = {
        "name": loan.client.names,
        "old_loan_id": loan.id,
        "new_loan_id": new_loan.id,
        "new_amount": f"{new_principal:,.0f}",
        "due_date": new_due_date,
        "payment_url": payment_url,
    }

    # Send email only after successful database commit.
    transaction.on_commit(
        lambda: send_email(
            to_email=loan.client.email,
            subject="🔁 Loan Restructured Successfully",
            template_name="loans/reloan.html",
            context=email_context,
        )
    )

    return new_loan
