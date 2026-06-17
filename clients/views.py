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
from django.utils.dateparse import parse_date
from openpyxl import Workbook
from django.http import HttpResponse

# users/permissions.py
def get_filtered_clients(request):
    queryset = (
        Client.objects.select_related("user")
        .annotate(
            total_loans=Count("loan"),
            total_amount=Coalesce(
                Sum("loan__loan_amount"),
                Value(0),
                output_field=DecimalField(
                    max_digits=12,
                    decimal_places=2,
                ),
            ),
        )
        .order_by("-created_at")
    )

    search = request.query_params.get("search")
    district = request.query_params.get("district")

    start_date = request.query_params.get("start_date")
    end_date = request.query_params.get("end_date")

    if search:
        queryset = queryset.filter(
            Q(names__icontains=search)
            | Q(phone__icontains=search)
            | Q(email__icontains=search)
        )

    if district:
        queryset = queryset.filter(
            district__iexact=district
        )

    if start_date:
        start_date = parse_date(start_date)
        if start_date:
            queryset = queryset.filter(
                created_at__date__gte=start_date
            )

    if end_date:
        end_date = parse_date(end_date)
        if end_date:
            queryset = queryset.filter(
                created_at__date__lte=end_date
            )

    return queryset
class ClientListCreateView(generics.ListCreateAPIView):
    permission_classes = [IsAuthenticated, IsAdminOrManager]
    pagination_class = StandardResultsSetPagination

    def get_queryset(self):
        return get_filtered_clients(self.request)

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

class ExportClientsView(APIView):
    permission_classes = [IsAuthenticated, IsAdminOrManager]

    def get(self, request):

        clients = get_filtered_clients(request)

        wb = Workbook()
        ws = wb.active
        ws.title = "Clients"

        ws.append([
            "ID",
            "Names",
            "Phone",
            "Email",
            "District",
            "Total Loans",
            "Total Amount",
            "Created At",
        ])

        for client in clients:
            ws.append([
                client.id,
                client.names,
                client.phone,
                client.email,
                client.district,
                client.total_loans,
                float(client.total_amount),
                client.created_at.strftime("%Y-%m-%d"),
            ])

        response = HttpResponse(
            content_type=(
                "application/vnd.openxmlformats-officedocument"
                ".spreadsheetml.sheet"
            )
        )

        response[
            "Content-Disposition"
        ] = 'attachment; filename="clients.xlsx"'

        wb.save(response)

        return response
