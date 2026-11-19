
import logging
from datetime import timedelta
from decimal import Decimal

from django.conf import settings
from django.core.management.base import BaseCommand
from django.db import transaction
from django.utils.timezone import now
from datetime import datetime
from loans.models import Loan
from loans.management.commands.reloan import process_reloan
from users.models import User
from users.utils import send_email


logger = logging.getLogger(__name__)

PAYMENT_URL = f"{settings.FRONTEND_URL}/dashboard/payments"


class Command(BaseCommand):
    help = "Loan reminders, overdue processing, and penalty application"

    def send_email_after_commit(
        self,
        stats,
        to_email,
        subject,
        template_name,
        context,
        stat_key=None,
    ):
        """
        Register an email to be sent only after the current
        database transaction commits successfully.
        """

        if not to_email:
            logger.warning(
                "Email not sent: recipient address is empty. Subject: %s",
                subject,
            )
            return

        def send_notification():
            try:
                send_email(
                    to_email=to_email,
                    subject=subject,
                    template_name=template_name,
                    context=context,
                )

                if stat_key:
                    stats[stat_key] += 1

            except Exception:
                stats["email_errors"] += 1

                logger.exception(
                    "Failed to send email to %s. Subject: %s",
                    to_email,
                    subject,
                )

        transaction.on_commit(send_notification)

    def handle(self, *args, **kwargs):
        today = now().date()

        loan_ids = list(
            Loan.objects.filter(
                status__in=[
                    "active",
                    "in_payment",
                    "overdue",
                    "defaulted",
                    "to_be_reported",
                    "reported",
                ]
            )
            .order_by("id")
            .values_list("id", flat=True)
        )

        stats = {
            "5_days": 0,
            "1_day": 0,
            "overdue_reminders": 0,
            "penalties_applied": 0,
            "reloaned": 0,
            "reporting_notifications": 0,
            "errors": 0,
            "email_errors": 0,
        }

        for loan_id in loan_ids:
            penalty_applied = False
            reloaned = False

            try:
                with transaction.atomic():

                    # Fetch and lock the latest loan record.
                    loan = (
                        Loan.objects
                        .select_for_update()
                        .select_related("client", "loan_type")
                        .get(pk=loan_id)
                    )

                    # Ignore loans whose status changed before processing.
                    if loan.status not in {
                        "active",
                        "in_payment",
                        "overdue",
                        "defaulted",
                        "to_be_reported",
                        "reported",
                    }:
                        continue

                    changed_fields = set()

                    # ==========================================
                    # MARK FULLY PAID LOANS
                    # ==========================================

                    if loan.remaining_balance <= Decimal("0.00"):

                        if loan.status != "paid":
                            loan.status = "paid"
                            changed_fields.add("status")

                        if changed_fields:
                            loan.save(update_fields=changed_fields)

                        continue

                    # A loan without a loan type cannot be processed
                    # because grace days and penalty rates are required.
                    if loan.loan_type is None:
                        raise ValueError(
                            f"Loan #{loan.id} has no loan type configured."
                        )

                    due_date = loan.repayment_due_date

                    grace_days = loan.loan_type.grace_period_days

                    last_payment_date = (
                        due_date + timedelta(days=grace_days)
                    )

                    days_left = (due_date - today).days

                    days_overdue = (today - due_date).days

                    # Common email context.
                    context = {
                        "client_name": loan.client.names,
                        "loan_id": loan.id,
                        "loan_taken": loan.loan_amount,
                        "loan_interest": loan.interest_amount,
                        "due_date": due_date,
                        "last_payment_date": last_payment_date,
                        "payment_url": PAYMENT_URL,
                    }

                    # ==========================================
                    # PROCESS RELOAN
                    # ==========================================

                    if loan.is_eligible_for_reloan():

                        process_reloan(loan)

                        # Do not save this original loan instance.
                        # process_reloan() fetches and updates its
                        # own locked instance.
                        reloaned = True

                    else:

                        # ======================================
                        # 5 DAYS BEFORE DUE DATE
                        # ======================================

                        if (
                            days_left == 5
                            and not loan.reminder_5_days_sent
                        ):
                            context["balance"] = (
                                f"{loan.remaining_balance:,.0f}"
                            )

                            loan.reminder_5_days_sent = True
                            changed_fields.add("reminder_5_days_sent")

                            self.send_email_after_commit(
                                stats=stats,
                                to_email=loan.client.email,
                                subject="📅 Loan Payment Reminder (5 Days Left)",
                                template_name="loans/loan_reminder.html",
                                context=context,
                                stat_key="5_days",
                            )

                        # ======================================
                        # 1 DAY BEFORE DUE DATE
                        # ======================================

                        elif (
                            days_left == 1
                            and not loan.reminder_1_day_sent
                        ):
                            context["balance"] = (
                                f"{loan.remaining_balance:,.0f}"
                            )

                            loan.reminder_1_day_sent = True
                            changed_fields.add("reminder_1_day_sent")

                            self.send_email_after_commit(
                                stats=stats,
                                to_email=loan.client.email,
                                subject="⏳ Loan Payment Due Tomorrow",
                                template_name="loans/loan_reminder.html",
                                context=context,
                                stat_key="1_day",
                            )

                        # ======================================
                        # OVERDUE WITHIN GRACE PERIOD
                        # ======================================

                        if (
                            days_overdue > 0
                            and days_overdue <= grace_days
                        ):

                            if loan.status != "overdue":
                                loan.status = "overdue"
                                changed_fields.add("status")

                            # Send one reminder per day.
                            if (
                                loan.overdue_last_notified is None
                                or loan.overdue_last_notified != today
                            ):
                                context.update({
                                    "balance": (
                                        f"{loan.remaining_balance:,.0f}"
                                    ),
                                    "days_overdue": days_overdue,
                                    "grace_days": grace_days,
                                    "remaining_grace_days": (
                                        grace_days - days_overdue
                                    ),
                                })

                                loan.overdue_last_notified = today
                                changed_fields.add(
                                    "overdue_last_notified"
                                )

                                self.send_email_after_commit(
                                    stats=stats,
                                    to_email=loan.client.email,
                                    subject="⚠️ Loan Payment Overdue",
                                    template_name=(
                                        "loans/loan_overdue_grace.html"
                                    ),
                                    context=context,
                                    stat_key="overdue_reminders",
                                )

                        # ======================================
                        # GRACE PERIOD EXCEEDED
                        # ======================================

                        if days_overdue > grace_days:

                            # Mark the loan as defaulted.
                            # in_payment is intentionally NOT exempt.
                            if loan.status not in {
                                "defaulted",
                                "to_be_reported",
                                "reported",
                            }:
                                loan.status = "defaulted"
                                changed_fields.add("status")

                                if not loan.defaulting_date:
                                    loan.defaulting_date = today
                                    changed_fields.add("defaulting_date")

                            # ==================================
                            # APPLY DAILY COMPOUNDING PENALTY
                            # ==================================

                            if loan.last_penalty_date != today:

                                penalty_rate = (
                                    loan.loan_type
                                    .late_payment_penalty_percentage
                                    / Decimal("100")
                                )

                                daily_penalty = (
                                    loan.remaining_balance * penalty_rate
                                ).quantize(Decimal("0.01"))

                                if daily_penalty > Decimal("0.00"):

                                    loan.penalty_amount += daily_penalty

                                    loan.remaining_balance += daily_penalty

                                    loan.total_repayment += daily_penalty

                                    changed_fields.update({
                                        "penalty_amount",
                                        "remaining_balance",
                                        "total_repayment",
                                    })

                                    penalty_applied = True

                                loan.last_penalty_date = today
                                changed_fields.add("last_penalty_date")

                            # ==================================
                            # DAILY DEFAULT NOTIFICATION
                            # ==================================

                            if (
                                loan.overdue_last_notified is None
                                or loan.overdue_last_notified != today
                            ):
                                context.update({
                                    "balance": (
                                        f"{loan.remaining_balance:,.0f}"
                                    ),
                                    "penalty": (
                                        f"{loan.penalty_amount:,.0f}"
                                    ),
                                    "days_overdue": days_overdue,
                                })

                                loan.overdue_last_notified = today
                                changed_fields.add(
                                    "overdue_last_notified"
                                )

                                self.send_email_after_commit(
                                    stats=stats,
                                    to_email=loan.client.email,
                                    subject="🚨 Loan Default Notice",
                                    template_name=(
                                        "loans/loan_defaulted.html"
                                    ),
                                    context=context,
                                    stat_key="overdue_reminders",
                                )

                            # ==================================
                            # MOVE TO CREDIT REPORTING
                            # ==================================

                            if (
                                loan.status == "defaulted"
                                and loan.defaulting_date
                            ):
                                defaulting_date = loan.defaulting_date

                                if isinstance(defaulting_date, datetime):
                                    defaulting_date = defaulting_date.date()

                                days_in_default = (today - defaulting_date).days

                                if days_in_default >= 30:
                                    loan.status = "to_be_reported"
                                    changed_fields.add("status")

                            # ==================================
                            # NOTIFY ADMINS DAILY
                            # WHILE AWAITING CREDIT REPORTING
                            # ==================================

                            if loan.status == "to_be_reported":

                                admin_emails = (
                                    User.objects.filter(
                                        role="admin",
                                        is_active=True,
                                    )
                                    .exclude(email="")
                                    .values_list("email", flat=True)
                                    .distinct()
                                )

                                for email in admin_emails:

                                    self.send_email_after_commit(
                                        stats=stats,
                                        to_email=email,
                                        subject=(
                                            "⚠️ Loan Requires Credit Reporting Review"
                                        ),
                                        template_name=(
                                            "loans/loan_to_be_reported_admin.html"
                                        ),
                                        context={
                                            "loan_id": loan.id,
                                            "client_name": loan.client.names,
                                            "amount": (
                                                f"{loan.remaining_balance:,.0f}"
                                            ),
                                            "dashboard_url": (
                                                f"{settings.FRONTEND_URL}"
                                                f"/dashboard/loans/{loan.id}"
                                            ),
                                        },
                                        stat_key="reporting_notifications",
                                    )

                    # ==========================================
                    # SAVE ONLY CHANGED FIELDS
                    # ==========================================

                    if changed_fields:
                        loan.save(update_fields=changed_fields)

                # The transaction has committed successfully here.
                if reloaned:
                    stats["reloaned"] += 1

                if penalty_applied:
                    stats["penalties_applied"] += 1

            except Exception:
                stats["errors"] += 1

                logger.exception(
                    "Failed to process loan #%s",
                    loan_id,
                )

                self.stderr.write(
                    self.style.ERROR(
                        f"Failed to process loan #{loan_id}. "
                        "Check the application logs."
                    )
                )

        # ==============================================
        # FINAL PROCESSING REPORT
        # ==============================================

        self.stdout.write(
            self.style.SUCCESS(
                f"""
                Loan processing completed:

                • 5-day reminders sent: {stats['5_days']}
                • 1-day reminders sent: {stats['1_day']}
                • Overdue/default reminders sent: {stats['overdue_reminders']}
                • Daily penalties applied: {stats['penalties_applied']}
                • Loans reloaned: {stats['reloaned']}
                • Credit reporting admin notifications sent: {stats['reporting_notifications']}
                • Loan processing errors: {stats['errors']}
                • Email delivery errors: {stats['email_errors']}
                """
            )
        )
