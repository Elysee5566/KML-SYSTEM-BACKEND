from django.core.management.base import BaseCommand
from django.utils.timezone import now
from datetime import timedelta
from django.conf import settings

from loans.models import Loan
from loans.management.commands.reloan import process_reloan
from users.utils import send_email
from users.models import User
from datetime import datetime
from decimal import Decimal
payment_url = f"{settings.FRONTEND_URL}/dashboard/payments"


class Command(BaseCommand):
    help = "Loan reminders, overdue processing, and penalty application"

    def handle(self, *args, **kwargs):
        today = now().date()

        loans = Loan.objects.select_related(
            "client",
            "loan_type",
        ).filter(
            status__in=["active", "in_payment", "overdue","reloaned", "defaulted","to_be_reported","reported",]
        )

        stats = {
            "5_days": 0,
            "1_day": 0,
            "overdue_reminders": 0,
            "penalties_applied": 0,
            "reloaned": 0,
        }

        for loan in loans:
            # Skip fully paid loans
            # ==========================================
            # MARK LOAN AS PAID
            # ==========================================
            if (
                loan.remaining_balance <= Decimal("0.00")
                and loan.status != "paid"
            ):
                loan.status = "paid"
                loan.save(update_fields=["status"])
                continue
            due_date = loan.repayment_due_date

            grace_days = loan.loan_type.grace_period_days

            last_payment_date = due_date + timedelta(
                days=grace_days
            )

            days_left = (due_date - today).days

            days_overdue = (today - due_date).days

            context = {
                "client_name": loan.client.names,
                "loan_id": loan.id,
                "loan_taken":loan.loan_amount,
                "loan_interest":loan.interest_amount,
                "due_date": due_date,
                "last_payment_date": last_payment_date,
                "payment_url": payment_url,
            }
            
            # Process reloan if eligible
            if (
                loan.is_eligible_for_reloan()
                and loan.status != "reloaned"
            ):
                process_reloan(loan)
                stats["reloaned"] += 1

                loan.save()

                continue
            # ==========================================
            # 5 DAYS BEFORE DUE DATE
            # ==========================================
            if (
                days_left == 5
                and not loan.reminder_5_days_sent
            ):
                context["balance"] = (
                    f"{loan.remaining_balance:,.0f}"
                )

                send_email(
                    to_email=loan.client.email,
                    subject="📅 Loan Payment Reminder (5 Days Left)",
                    template_name="loans/loan_reminder.html",
                    context=context,
                )

                loan.reminder_5_days_sent = True
                stats["5_days"] += 1

            # ==========================================
            # 1 DAY BEFORE DUE DATE
            # ==========================================
            elif (
                days_left == 1
                and not loan.reminder_1_day_sent
            ):
                context["balance"] = (
                    f"{loan.remaining_balance:,.0f}"
                )

                send_email(
                    to_email=loan.client.email,
                    subject="⏳ Loan Payment Due Tomorrow",
                    template_name="loans/loan_reminder.html",
                    context=context,
                )

                loan.reminder_1_day_sent = True
                stats["1_day"] += 1

            # ==========================================
            # OVERDUE BUT STILL WITHIN GRACE PERIOD
            # ==========================================
            elif days_overdue > 0 and days_overdue <= grace_days:

                if loan.status != "overdue":
                    loan.status = "overdue"

                

                # Send reminder once per day
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

                    send_email(
                        to_email=loan.client.email,
                        subject="⚠️ Loan Payment Overdue",
                        template_name=(
                            "loans/loan_overdue_grace.html"
                        ),
                        context=context,
                    )

                    loan.overdue_last_notified = today

                    stats["overdue_reminders"] += 1

            # ==========================================
            # GRACE PERIOD EXCEEDED
            # ==========================================
            if days_overdue > grace_days:

                if loan.status not in {"defaulted", "to_be_reported", "reported","reloaned","in_payment"}:
                    loan.status = "defaulted"
                    if not loan.defaulting_date:
                        loan.defaulting_date = today
                    

                penalty_rate = (
                    loan.loan_type
                    .late_payment_penalty_percentage
                    / 100
                )

                # Apply penalty once per day
                if loan.last_penalty_date != today:

                    # penalty = (
                    #     loan.remaining_balance
                    #     * penalty_rate
                    # )
                    # Updating Penalty Calculations to late payment interes Which will be always calculated by principal * interest/30
                    interest_rate=(loan.loan_type.interest_rate /100)
                    penalty=(loan.loan_amount * interest_rate/30)
                    loan.penalty_amount += penalty

                    loan.remaining_balance += penalty

                    loan.last_penalty_date = today

                    stats["penalties_applied"] += 1

                # Send email once per day
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

                    send_email(
                        to_email=loan.client.email,
                        subject="🚨 Loan Default Notice",
                        template_name=(
                            "loans/loan_defaulted.html"
                        ),
                        context=context,
                    )

                    loan.overdue_last_notified = today
                if (
                    loan.status in ["defaulted","to_be_reported"]
                    and loan.defaulting_date
                ):
                    # print(f"Loan ID: {loan.id}")
                    # print(type(loan.defaulting_date))
                    # print(repr(loan.defaulting_date))
                    defaulting_date = loan.defaulting_date

                    if isinstance(defaulting_date, datetime):
                        defaulting_date = defaulting_date.date()
                    
                    days_in_default = (today - defaulting_date).days

                    if days_in_default >= 30:
                        loan.status = "to_be_reported"

                        loan.save()

                        # Notify client
                        # send_email(
                        #     to_email=loan.client.email,
                        #     subject="🚨 Loan Scheduled for Credit Reporting",
                        #     template_name="loans/loan_to_be_reported_client.html",
                        #     context={
                        #         "name": loan.client.names,
                        #         "loan_id": loan.id,
                        #         "amount": f"{loan.remaining_balance:,.0f}",
                        #         "dashboard_url": payment_url,
                        #     },
                        # )

                        # Notify admins/managers
                        admin_emails = User.objects.filter(
                            role__in=["admin"],
                            is_active=True,
                        ).values_list("email", flat=True)

                        for email in admin_emails:
                            send_email(
                                to_email=email,
                                subject="⚠️ Loan Requires Credit Reporting Review",
                                template_name="loans/loan_to_be_reported_admin.html",
                                context={
                                    "loan_id": loan.id,
                                    "client_name": loan.client.names,
                                    "amount": f"{loan.remaining_balance:,.0f}",
                                    "dashboard_url": (
                                        f"{settings.FRONTEND_URL}/dashboard/loans/{loan.id}"
                                    ),
                                },
                            )

                        continue

            loan.save()

        self.stdout.write(
            self.style.SUCCESS(
                f"""
                Loan processing completed:

                • 5-day reminders sent: {stats['5_days']}
                • 1-day reminders sent: {stats['1_day']}
                • Overdue reminders sent: {stats['overdue_reminders']}
                • Loans reloaned: {stats['reloaned']}
                • Penalties applied: {stats['penalties_applied']}
                                """
                            )
        )