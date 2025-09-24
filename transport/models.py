from django.db import models
from destinations.models import Destination


class Vendor(models.Model):
	name = models.CharField(max_length=150)
	contact_phone = models.CharField(max_length=20, blank=True)
	email = models.EmailField(blank=True)

	def __str__(self):
		return self.name


class Vehicle(models.Model):
	BUS = 'BUS'
	CAR = 'CAR'
	MICROBUS = 'MBUS'
	TYPES = [
		(BUS, 'Bus'),
		(CAR, 'Car'),
		(MICROBUS, 'Microbus'),
	]

	vendor = models.ForeignKey(Vendor, on_delete=models.CASCADE, related_name='vehicles')
	destination = models.ForeignKey(Destination, on_delete=models.CASCADE, related_name='vehicles')
	vehicle_type = models.CharField(max_length=10, choices=TYPES)
	name = models.CharField(max_length=150)
	seat_count = models.PositiveIntegerField(default=40)
	price_per_seat = models.DecimalField(max_digits=10, decimal_places=2)
	features = models.JSONField(default=list, blank=True)

	def __str__(self):
		return f"{self.name} ({self.get_vehicle_type_display()})"


class BusTrip(models.Model):
	vehicle = models.ForeignKey(Vehicle, on_delete=models.CASCADE, related_name='trips')
	departure_time = models.DateTimeField()
	arrival_time = models.DateTimeField()
	available_seats = models.JSONField(default=list, blank=True)

	def __str__(self):
		return f"Trip {self.id} - {self.vehicle.name}"


