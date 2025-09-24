from django.contrib import admin
from django.contrib.auth.admin import UserAdmin as DjangoUserAdmin
from .models import User


@admin.register(User)
class UserAdmin(DjangoUserAdmin):
	fieldsets = DjangoUserAdmin.fieldsets + (
		('Contact', {'fields': ('phone',)}),
	)
	list_display = ('username', 'email', 'first_name', 'last_name', 'phone', 'is_staff')
	search_fields = ('username', 'email', 'first_name', 'last_name', 'phone')

# Admin branding
admin.site.site_header = 'Administration Panel'
admin.site.site_title = 'Administration Panel'
admin.site.index_title = 'Manage Content'


