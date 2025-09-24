from django.contrib.auth import login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.views import LoginView
from django.shortcuts import redirect, render
from django.urls import reverse
from .forms import RegisterForm, LoginForm


class UserLoginView(LoginView):
	form_class = LoginForm
	template_name = 'accounts/login.html'


def register(request):
	if request.method == 'POST':
		form = RegisterForm(request.POST)
		if form.is_valid():
			user = form.save()
			login(request, user)
			return redirect('home')
	else:
		form = RegisterForm()
	return render(request, 'accounts/register.html', { 'form': form })


@login_required
def profile(request):
	return render(request, 'accounts/profile.html')


