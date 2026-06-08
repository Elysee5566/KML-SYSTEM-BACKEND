from rest_framework import generics
from .models import Client
from .serializers import ClientSerializer, CreateClientSerializer
from rest_framework import generics
from .models import Client
from .serializers import ClientSerializer, CreateClientSerializer
from users.permissions import IsAdminOrManager
from rest_framework.permissions import IsAuthenticated
from django.db.models import Q,Count, Sum,Value,DecimalField
from django.db.models.functions import Coalesce
from core.pagination import StandardResultsSetPagination
from rest_framework.response import Response
from rest_framework.views import APIView
# users/permissions.py
class ClientListCreateView(generics.ListCreateAPIView):
    permission_classes = [IsAuthenticated, IsAdminOrManager]
    pagination_class = StandardResultsSetPagination

    def get_queryset(self):
        queryset = (
            Client.objects.select_related("user")
            .annotate(
                total_loans=Count("loan"),
                total_amount=Coalesce(
                    Sum("loan__loan_amount"),
                    Value(0),
                    output_field=DecimalField(
                        max_digits=12,
                        decimal_places=2
                    ),
                ),
            )
            .order_by("-created_at")
        )

        search = self.request.query_params.get("search")
        district = self.request.query_params.get("district")

        # Search
        if search:
            queryset = queryset.filter(
                Q(names__icontains=search) |
                Q(phone__icontains=search)|
                Q(email__icontains=search)
            )

        # District filter
        if district:
            queryset = queryset.filter(
                district__iexact=district
            )

        return queryset
    def get_serializer_class(self):
        if self.request.method == "POST":
            return CreateClientSerializer
        return ClientSerializer

class ClientSearchView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request):
        query = request.query_params.get("q", "")

        queryset = Client.objects.none()

        if query:
            queryset = (
                Client.objects
                .filter(
                    Q(names__icontains=query) |
                    Q(phone__icontains=query)|
                    Q(email__icontains=query)
                )
                .only("id", "names", "phone")[:10]
            )

        return Response([
            {
                "id": client.id,
                "names": client.names,
                "phone": client.phone,
            }
            for client in queryset
        ])
class ClientDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer
    permission_classes = [IsAuthenticated, IsAdminOrManager]

