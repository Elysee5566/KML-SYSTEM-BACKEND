# clients/urls.py

from django.urls import path
from .views import ClientListCreateView, ClientDetailView,ClientSearchView

urlpatterns = [
    path("", ClientListCreateView.as_view()),
    path("<int:pk>/", ClientDetailView.as_view()),
    path("search/", ClientSearchView.as_view()),
]