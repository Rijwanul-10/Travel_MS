from django.urls import path
from .views import destination_list, destination_detail, package_detail

urlpatterns = [
	path('', destination_list, name='list'),
	path('<slug:slug>/', destination_detail, name='detail'),
	path('package/<slug:slug>/', package_detail, name='package_detail'),
]


