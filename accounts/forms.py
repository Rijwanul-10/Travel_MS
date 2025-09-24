from django import forms
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from .models import User


class RegisterForm(UserCreationForm):
	first_name = forms.CharField(max_length=150, required=True)
	last_name = forms.CharField(max_length=150, required=True)
	phone = forms.CharField(max_length=20, required=False)

	class Meta:
		model = User
		fields = ("username", "email", "first_name", "last_name", "phone", "password1", "password2")


class LoginForm(AuthenticationForm):
	username = forms.CharField()
	password = forms.CharField(widget=forms.PasswordInput)


