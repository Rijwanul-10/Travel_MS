from django.urls import path
from .views import start_package_booking, start_room_booking, start_trip_booking, checkout_summary, my_bookings, booking_success

urlpatterns = [
	path('package/<int:package_id>/start/', start_package_booking, name='start_package'),
	path('hotel-room/<int:room_id>/start/', start_room_booking, name='start_room'),
	path('trip/<int:trip_id>/start/', start_trip_booking, name='start_trip'),
	path('checkout/', checkout_summary, name='checkout'),
	path('my/', my_bookings, name='my'),
	path('success/<int:booking_id>/', booking_success, name='success'),
]


