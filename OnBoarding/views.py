from django.shortcuts import render
# apps/onboarding/views.py

from rest_framework import viewsets
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework import status
from django.conf import settings
from .models import OnboardingVideo
from .serializers import OnboardingVideoSerializer
from users.permissions import IsAdminOrManager
# Create your views here.
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status

class OnboardingVideoDetailView(APIView):
    permission_classes = []

    def get(self, request, pk):
        video = OnboardingVideo.objects.filter(
            id=pk,
            is_active=True
        ).first()

        if not video:
            return Response({"detail": "Video not found"}, status=404)

        return Response({
            "id": video.id,
            "title": video.title,
            "description": video.description,
            "video_url": request.build_absolute_uri(video.video.url),
        })
class OnboardingVideoViewSet(viewsets.ModelViewSet):
    queryset = OnboardingVideo.objects.all()
    serializer_class = OnboardingVideoSerializer

    def get_permissions(self):
        if self.action in [
            "create",
            "update",
            "partial_update",
            "destroy",
            "activate",
        ]:
            return [IsAdminOrManager()]

        return []

    @action(
    detail=False,
    methods=["get"],
    url_path="active",
    )
    def active(self, request):
        category = request.query_params.get("category")

        queryset = OnboardingVideo.objects.filter(is_active=True)

        # filter by category if provided
        if category:
            queryset = queryset.filter(category=category)

        video = queryset.first()

        if not video:
            return Response(
                {"detail": "No active video found"},
                status=status.HTTP_404_NOT_FOUND,
            )

        serializer = self.get_serializer(video)
        return Response(serializer.data)

    @action(
        detail=True,
        methods=["post"],
    )
    @action(
    detail=True,
    methods=["post"],
    )
    def activate(self, request, pk=None):
        video = self.get_object()

        # deactivate only videos in same category
        OnboardingVideo.objects.filter(
            category=video.category
        ).update(is_active=False)

        video.is_active = True
        video.save()

        return Response({
            "message": f"Video activated for category {video.category}"
        })
def get_onboarding_video_obj(category=None):
    video = None

    if category:
        video = (
            OnboardingVideo.objects
            .filter(category=category, is_active=True)
            .first()
        )

    if not video:
        video = (
            OnboardingVideo.objects
            .filter(is_active=True)
            .order_by("-updated_at")
            .first()
        )

    return video
def get_onboarding_video_url(category=None, request=None):
    video = get_onboarding_video_obj(category)

    if not video or not video.video:
        return None

    url = video.video.url

    if request:
        return request.build_absolute_uri(url)
    else:
        return f"{settings.APP_URL}{url}"

    # return url