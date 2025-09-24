from django.urls import path
from django.contrib.auth.views import LogoutView
from .views import UserLoginView, register, profile

urlpatterns = [
	path('login/', UserLoginView.as_view(), name='login'),
	path('logout/', LogoutView.as_view(), name='logout'),
	path('register/', register, name='register'),
	path('profile/', profile, name='profile'),
]


