# urls.py

from django.urls import path
from .views import SystemSettingView

urlpatterns = [
    path(
        "",
        SystemSettingView.as_view(),
        name="system-settings",
    ),
]