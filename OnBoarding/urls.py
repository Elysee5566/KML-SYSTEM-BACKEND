from django.urls import path
from .views import OnboardingVideoViewSet,OnboardingVideoDetailView
from rest_framework.routers import DefaultRouter
route=DefaultRouter()
route.register(r"",OnboardingVideoViewSet)
urlpatterns =[
    path("video/<int:pk>/", OnboardingVideoDetailView.as_view()),
    ]+route.urls