from django.db import models


class Destination(models.Model):
	name = models.CharField(max_length=150)
	slug = models.SlugField(unique=True)
	country = models.CharField(max_length=120)
	description = models.TextField(blank=True)
	image = models.ImageField(upload_to='destinations/', blank=True, null=True)

	def __str__(self):
		return self.name


class Package(models.Model):
	destination = models.ForeignKey(Destination, on_delete=models.CASCADE, related_name='packages')
	title = models.CharField(max_length=200)
	slug = models.SlugField(unique=True)
	price = models.DecimalField(max_digits=10, decimal_places=2)
	duration_days = models.PositiveIntegerField()
	itinerary = models.JSONField(default=list, blank=True)
	includes = models.JSONField(default=list, blank=True)
	excludes = models.JSONField(default=list, blank=True)
	image = models.ImageField(upload_to='packages/', blank=True, null=True)

	def __str__(self):
		return f"{self.title} ({self.destination.name})"


