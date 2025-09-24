from django.contrib import admin
from .models import Booking


@admin.register(Booking)
class BookingAdmin(admin.ModelAdmin):
	list_display = ("id", "user", "booking_type", "total_price", "status", "created_at")
	list_filter = ("booking_type", "status")
	search_fields = ("id", "user__username")


