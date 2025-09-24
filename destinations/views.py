from django.db.models import Q
from django.shortcuts import get_object_or_404, render
from .models import Destination, Package


def destination_list(request):
	q = request.GET.get('q', '').strip()
	queryset = Destination.objects.all()
	if q:
		queryset = queryset.filter(Q(name__icontains=q) | Q(country__icontains=q) | Q(description__icontains=q))
	return render(request, 'destinations/list.html', { 'destinations': queryset, 'q': q })


def destination_detail(request, slug):
	destination = get_object_or_404(Destination, slug=slug)
	return render(request, 'destinations/detail.html', { 'destination': destination })


def package_detail(request, slug):
	package = get_object_or_404(Package, slug=slug)
	return render(request, 'destinations/package_detail.html', { 'package': package })


