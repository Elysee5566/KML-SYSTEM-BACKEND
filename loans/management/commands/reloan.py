from datetime import timedelta

from django.conf import settings
from django.db import transaction
from django.utils import timezone

from users.utils import send_email
from loans.models import Loan


@transaction.atomic
def process_reloan(loan: Loan):
    # Lock the original loan so two processes cannot reloan it
    # simultaneously.
    loan = (
        Loan.objects
        .select_for_update()
        .select_related("client", "loan_type")
        .get(pk=loan.pk)
    )

    # Prevent duplicate reloan
    if loan.status == "reloaned":
        raise Exception(f"Loan #{loan.id} has already been reloaned")

    # A fully cleared loan cannot generate a reloan.
    if loan.remaining_balance <= 0:
        raise Exception(
            f"Loan #{loan.id} is fully cleared. No outstanding balance to reloan."
        )

    # Check business eligibility
    if not loan.is_eligible_for_reloan():
        raise Exception(
            f"Loan #{loan.id} is not eligible for reloan"
        )

    # Outstanding principal/amount becomes the new principal
    new_principal = loan.remaining_balance

    interest_rate = loan.loan_type.interest_rate / 100
    new_interest = new_principal * interest_rate

    new_due_date = (
        timezone.now().date()
        + timedelta(
            days=loan.loan_type.repayment_period_value
        )
    )

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

    # Mark old loan as reloaned
    loan.status = "reloaned"
    loan.save(update_fields=["status"])

    # Send notification after successful database operations
    payment_url = f"{settings.FRONTEND_URL}/payments"

    send_email(
        to_email=loan.client.email,
        subject="🔁 Loan Restructured Successfully",
        template_name="loans/reloan.html",
        context={
            "name": loan.client.names,
            "old_loan_id": loan.id,
            "new_loan_id": new_loan.id,
            "new_amount": f"{new_principal:,.0f}",
            "due_date": new_due_date,
            "payment_url": payment_url,
        },
    )

    return new_loan