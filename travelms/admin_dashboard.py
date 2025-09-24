from django.contrib.admin.views.decorators import staff_member_required
from django.shortcuts import render
from django.contrib.auth import get_user_model
from bookings.models import Booking
from payments.models import Payment


@staff_member_required
def dashboard_view(request):
	User = get_user_model()
	context = {
		'user_count': User.objects.count(),
		'booking_count': Booking.objects.count(),
		'payment_count': Payment.objects.count(),
		'latest_users': User.objects.order_by('-date_joined')[:10],
		'latest_bookings': Booking.objects.select_related('user').order_by('-created_at')[:10],
		'latest_payments': Payment.objects.select_related('booking').order_by('-created_at')[:10],
	}
	return render(request, 'admin/dashboard.html', context)


