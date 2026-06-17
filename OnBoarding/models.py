# apps/onboarding/models.py

from django.db import models


class OnboardingVideo(models.Model):
    CATEGORY_CHOICES = [
    ("login", "Login / Signup"),
    ("application", "Loan Application"),
    ("payment", "Payment Flow"),
    ("contract", "Contract Signing"),
]
    title = models.CharField(max_length=255)
    description = models.TextField(blank=True)

    video = models.FileField(
        upload_to="onboarding/videos/"
    )
    category = models.CharField(
    max_length=50,
    choices=CATEGORY_CHOICES,
    default="application"
    )
    is_active = models.BooleanField(default=True)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ["-created_at"]

    def save(self, *args, **kwargs):
        if self.is_active:
            OnboardingVideo.objects.exclude(
                pk=self.pk
            ).update(is_active=False)

        super().save(*args, **kwargs)

    def __str__(self):
        return self.title