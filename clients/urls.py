# clients/urls.py

from django.urls import path
from .views import ClientListCreateView, ClientDetailView,ClientSearchView,ExportClientsView

urlpatterns = [
    path("", ClientListCreateView.as_view()),
    path("<int:pk>/", ClientDetailView.as_view()),
    path("search/", ClientSearchView.as_view()),
    path("export/",ExportClientsView.as_view(),name="export-clients",)
]