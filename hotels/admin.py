from django.contrib import admin
from .models import Hotel, Room


@admin.register(Hotel)
class HotelAdmin(admin.ModelAdmin):
	list_display = ("name", "destination", "price_per_night", "star_rating")
	list_filter = ("destination",)
	search_fields = ("name", "address")


@admin.register(Room)
class RoomAdmin(admin.ModelAdmin):
	list_display = ("hotel", "room_type", "capacity", "price", "available")
	list_filter = ("hotel", "available")


