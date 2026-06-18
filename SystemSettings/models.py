from django.db import models

class SystemSetting(models.Model):
    loan_application_enabled = models.BooleanField(default=True)
    loan_application_message = models.TextField(
        default="Loan applications are temporarily unavailable. Please try again later."
    )

    def save(self, *args, **kwargs):
        self.pk = 1  # Ensure only one settings record
        super().save(*args, **kwargs)

    def __str__(self):
        return "System Settings"