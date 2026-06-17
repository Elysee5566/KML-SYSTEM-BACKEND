# apps/onboarding/serializers.py

from rest_framework import serializers
from .models import OnboardingVideo


class OnboardingVideoSerializer(serializers.ModelSerializer):
    video_url = serializers.SerializerMethodField()

    class Meta:
        model = OnboardingVideo
        fields = [
            "id",
            "title",
            "description",
            "video",
            "video_url",
            "is_active",
            "created_at",
            "updated_at",
        ]
        read_only_fields = [
            "id",
            "created_at",
            "updated_at",
        ]

    def get_video_url(self, obj):
        request = self.context.get("request")

        if request and obj.video:
            return request.build_absolute_uri(
                obj.video.url
            )

        return None