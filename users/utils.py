from django.core.mail import EmailMultiAlternatives
from django.template.loader import render_to_string
from django.conf import settings
from django.core.mail import EmailMultiAlternatives
from django.template.loader import render_to_string
from django.conf import settings
from OnBoarding.views import get_onboarding_video_obj
import logging

logger = logging.getLogger(__name__)
from django.contrib.auth import get_user_model
from django.db.models import Q

User = get_user_model()

def get_staff_emails():
    return list(
        User.objects.filter(
            is_active=True,
            email__isnull=False
        )
        .exclude(email="")
        .filter(
            Q(is_superuser=True) | Q(role__in=["admin"])
        )
        .values_list("email", flat=True)
        .distinct()
    )
def send_email(
    to_email,
    subject,
    template_name,
    context=None,
    text_content=None,
):
    context = context or {}

    try:
        # ✅ normalize recipients
        if isinstance(to_email, str):
            to_email = [to_email]

        # Render HTML
        html_content = render_to_string(template_name, context)

        if not text_content:
            text_content = "Please view this email in an HTML-supported client."

        msg = EmailMultiAlternatives(
            subject=subject,
            body=text_content,
            from_email=settings.DEFAULT_FROM_EMAIL,
            to=to_email,  # ✅ FIXED
        )

        msg.attach_alternative(html_content, "text/html")
        msg.send()

        return True

    except Exception as e:
        logger.error(
            f"Email failed | to={to_email} | subject={subject} | error={str(e)}"
        )
        return False
def send_credentials_email(email, password):
    video = get_onboarding_video_obj("login")

    video_page_url = None
    if video:
        video_page_url = f"{settings.FRONTEND_URL}/video/{video.id}"

    

    subject = "Your Kigali Microloans Account"

    html_content = render_to_string(
        "emails/credentials.html",
        {
            "email": email,
            "password": password,
            "dashboard_url": f"{settings.FRONTEND_URL}/dashboard",
            "video_url": video_page_url,
        },
    )

    msg = EmailMultiAlternatives(
        subject,
        "",
        settings.DEFAULT_FROM_EMAIL,
        [email],
    )

    msg.attach_alternative(html_content, "text/html")
    msg.send()