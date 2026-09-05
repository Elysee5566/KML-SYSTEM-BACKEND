# serializers.py

from rest_framework import serializers
from .models import SystemSetting

class SystemSettingSerializer(serializers.ModelSerializer):
    class Meta:
        model = SystemSetting
        fields = [
            "loan_application_enabled",
            "loan_application_message",
            "allow_sending_emails"
            
        ]