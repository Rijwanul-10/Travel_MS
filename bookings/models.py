from django.conf import settings
from django.db import models
from destinations.models import Package
from hotels.models import Room
from transport.models import BusTrip


class Booking(models.Model):
	PACKAGE = 'PACKAGE'
	HOTEL = 'HOTEL'
	TRIP = 'TRIP'
	TYPES = [
		(PACKAGE, 'Package'),
		(HOTEL, 'Hotel Room'),
		(TRIP, 'Bus Trip'),
	]

	PENDING = 'PENDING'
	CONFIRMED = 'CONFIRMED'
	CANCELLED = 'CANCELLED'
	PAID_CASH = 'PAID_CASH'
	STATUS = [
		(PENDING, 'Pending'),
		(CONFIRMED, 'Confirmed'),
		(CANCELLED, 'Cancelled'),
		(PAID_CASH, 'Pending Cash Collection'),
	]

	user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='bookings')
	booking_type = models.CharField(max_length=10, choices=TYPES)
	package = models.ForeignKey(Package, on_delete=models.SET_NULL, null=True, blank=True)
	room = models.ForeignKey(Room, on_delete=models.SET_NULL, null=True, blank=True)
	trip = models.ForeignKey(BusTrip, on_delete=models.SET_NULL, null=True, blank=True)
	quantity = models.PositiveIntegerField(default=1)
	extra_info = models.JSONField(default=dict, blank=True)
	total_price = models.DecimalField(max_digits=10, decimal_places=2)
	status = models.CharField(max_length=20, choices=STATUS, default=PENDING)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)

	def __str__(self):
		return f"Booking #{self.id} - {self.user} - {self.booking_type}"


