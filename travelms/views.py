from django.shortcuts import render
from destinations.models import Package


def home(request):
	featured = Package.objects.select_related('destination').order_by('-id')[:12]
	return render(request, 'home.html', { 'featured': featured })


