from django.contrib import admin
from .models import Vendor, Vehicle, BusTrip


@admin.register(Vendor)
class VendorAdmin(admin.ModelAdmin):
	list_display = ("name", "contact_phone", "email")


@admin.register(Vehicle)
class VehicleAdmin(admin.ModelAdmin):
	list_display = ("name", "vehicle_type", "vendor", "destination", "seat_count", "price_per_seat")
	list_filter = ("vehicle_type", "destination")
	search_fields = ("name",)


@admin.register(BusTrip)
class BusTripAdmin(admin.ModelAdmin):
	list_display = ("vehicle", "departure_time", "arrival_time")
	list_filter = ("vehicle",)


