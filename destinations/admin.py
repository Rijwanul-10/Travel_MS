from django.contrib import admin
from .models import Destination, Package


@admin.register(Destination)
class DestinationAdmin(admin.ModelAdmin):
	list_display = ("name", "country")
	search_fields = ("name", "country")
	prepopulated_fields = {"slug": ("name",)}


@admin.register(Package)
class PackageAdmin(admin.ModelAdmin):
	list_display = ("title", "destination", "price", "duration_days")
	list_filter = ("destination",)
	search_fields = ("title",)
	prepopulated_fields = {"slug": ("title",)}


