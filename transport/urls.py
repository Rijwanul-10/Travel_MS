from django.urls import path
from .views import transport_home, trip_detail

urlpatterns = [
	path('', transport_home, name='home'),
	path('trip/<int:pk>/', trip_detail, name='trip_detail'),
]


