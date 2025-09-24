from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, JsonResponse
from django.shortcuts import get_object_or_404, redirect
from django.views.decorators.csrf import csrf_exempt
from bookings.models import Booking
from .models import Payment


@login_required
def start_payment(request, method, booking_id):
	booking = get_object_or_404(Booking, id=booking_id, user=request.user)
	payment = Payment.objects.create(booking=booking, method=method, amount=booking.total_price)
	# Placeholder sandbox flow: redirect to a fake return URL immediately
	return redirect(f"/payments/return/{method}/?payment_id={payment.id}&status=SUCCESS")


@csrf_exempt
def payment_webhook(request, provider):
	# Placeholder webhook handler. Log payload and return 200
	return JsonResponse({ 'ok': True, 'provider': provider })


@login_required
def payment_return(request, provider):
	payment_id = request.GET.get('payment_id')
	status = request.GET.get('status', 'FAILED')
	payment = get_object_or_404(Payment, id=payment_id)
	if status == 'SUCCESS':
		payment.status = Payment.SUCCESS
		payment.save(update_fields=['status'])
		payment.booking.status = Booking.CONFIRMED
		payment.booking.save(update_fields=['status'])
		return redirect('bookings:success', booking_id=payment.booking_id)
	else:
		payment.status = Payment.FAILED
		payment.save(update_fields=['status'])
		return HttpResponse('Payment failed', status=400)


