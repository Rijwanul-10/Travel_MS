from django.db.models import Q
from django.shortcuts import get_object_or_404, render
from .models import Hotel


def hotel_list(request):
	q = request.GET.get('q', '').strip()
	min_price = request.GET.get('min_price')
	max_price = request.GET.get('max_price')
	amenities_str = request.GET.get('amenities', '').strip()

	queryset = Hotel.objects.select_related('destination').all()
	if q:
		queryset = queryset.filter(Q(name__icontains=q) | Q(address__icontains=q) | Q(destination__name__icontains=q))
	if min_price:
		queryset = queryset.filter(price_per_night__gte=min_price)
	if max_price:
		queryset = queryset.filter(price_per_night__lte=max_price)
	if amenities_str:
		for a in [s.strip() for s in amenities_str.split(',') if s.strip()]:
			queryset = queryset.filter(amenities__icontains=a)

	return render(request, 'hotels/list.html', { 'hotels': queryset, 'q': q })


def hotel_detail(request, pk):
	hotel = get_object_or_404(Hotel, pk=pk)
	return render(request, 'hotels/detail.html', { 'hotel': hotel })


