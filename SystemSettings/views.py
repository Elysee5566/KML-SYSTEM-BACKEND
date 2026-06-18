# views.py

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAdminUser

from .models import SystemSetting
from .serializers import SystemSettingSerializer


class SystemSettingView(APIView):
    permission_classes = [IsAdminUser]

    def get_object(self):
        obj, _ = SystemSetting.objects.get_or_create(pk=1)
        return obj

    def get(self, request):
        serializer = SystemSettingSerializer(self.get_object())
        return Response(serializer.data)

    def patch(self, request):
        settings = self.get_object()
        serializer = SystemSettingSerializer(
            settings,
            data=request.data,
            partial=True,
        )
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)