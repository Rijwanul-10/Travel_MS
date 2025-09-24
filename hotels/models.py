from django.db import models
from destinations.models import Destination


class Hotel(models.Model):
	destination = models.ForeignKey(Destination, on_delete=models.CASCADE, related_name='hotels')
	name = models.CharField(max_length=200)
	address = models.CharField(max_length=255)
	price_per_night = models.DecimalField(max_digits=10, decimal_places=2)
	star_rating = models.DecimalField(max_digits=2, decimal_places=1, default=0)
	amenities = models.JSONField(default=list, blank=True)
	image = models.ImageField(upload_to='hotels/', blank=True, null=True)

	def __str__(self):
		return self.name


class Room(models.Model):
	hotel = models.ForeignKey(Hotel, on_delete=models.CASCADE, related_name='rooms')
	room_type = models.CharField(max_length=100)
	capacity = models.PositiveIntegerField(default=2)
	price = models.DecimalField(max_digits=10, decimal_places=2)
	available = models.BooleanField(default=True)

	def __str__(self):
		return f"{self.hotel.name} - {self.room_type}"


