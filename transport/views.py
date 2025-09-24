from django.shortcuts import get_object_or_404, render
from django.utils import timezone
from .models import Vehicle, BusTrip


def transport_home(request):
	trips = BusTrip.objects.select_related('vehicle').order_by('departure_time')[:30]
	return render(request, 'transport/home.html', { 'trips': trips })


def trip_detail(request, pk):
	trip = get_object_or_404(BusTrip, pk=pk)
	return render(request, 'transport/trip_detail.html', { 'trip': trip })


