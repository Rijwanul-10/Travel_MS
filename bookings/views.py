from decimal import Decimal
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.shortcuts import get_object_or_404, redirect, render
from django.urls import reverse
from destinations.models import Package
from hotels.models import Room
from transport.models import BusTrip
from .models import Booking
from .forms import TravelerForm, PaymentChoiceForm


def _init_session_cart(request):
	if 'cart' not in request.session:
		request.session['cart'] = {}
	return request.session['cart']


def _set_cart(request, data):
	request.session['cart'] = data
	request.session.modified = True


def start_package_booking(request, package_id):
	package = get_object_or_404(Package, id=package_id)
	cart = _init_session_cart(request)
	cart.update({'type': 'PACKAGE', 'id': package.id, 'title': package.title, 'price': str(package.price), 'quantity': 1})
	_set_cart(request, cart)
	return redirect('bookings:checkout')


def start_room_booking(request, room_id):
	room = get_object_or_404(Room, id=room_id)
	cart = _init_session_cart(request)
	cart.update({'type': 'HOTEL', 'id': room.id, 'title': f"Room {room.room_type} at {room.hotel.name}", 'price': str(room.price), 'quantity': 1})
	_set_cart(request, cart)
	return redirect('bookings:checkout')


def start_trip_booking(request, trip_id):
	trip = get_object_or_404(BusTrip, id=trip_id)
	seats = []
	if request.method == 'POST':
		seats = [s.strip() for s in request.POST.get('seats', '').split(',') if s.strip()]
	qty = max(1, len(seats) or 1)
	cart = _init_session_cart(request)
	cart.update({'type': 'TRIP', 'id': trip.id, 'title': f"Trip {trip.id} on {trip.vehicle.name}", 'price': str(trip.vehicle.price_per_seat), 'quantity': qty, 'seats': seats})
	_set_cart(request, cart)
	return redirect('bookings:checkout')


@login_required
def checkout_summary(request):
	cart = request.session.get('cart') or {}
	if not cart:
		messages.error(request, 'Nothing to checkout.')
		return redirect('home')

	traveler_form = TravelerForm(request.POST or None)
	payment_form = PaymentChoiceForm(request.POST or None)
	total = Decimal(cart.get('price', '0')) * int(cart.get('quantity', 1))

	if request.method == 'POST' and traveler_form.is_valid() and payment_form.is_valid():
		booking = Booking.objects.create(
			user=request.user,
			booking_type=cart['type'],
			package_id=cart['id'] if cart['type'] == 'PACKAGE' else None,
			room_id=cart['id'] if cart['type'] == 'HOTEL' else None,
			trip_id=cart['id'] if cart['type'] == 'TRIP' else None,
			quantity=cart['quantity'],
			extra_info={ 'traveler': traveler_form.cleaned_data, 'seats': cart.get('seats', []) },
			total_price=total,
		)
		method = payment_form.cleaned_data['method']
		request.session['cart'] = {}
		if method == 'cod':
			booking.status = Booking.PAID_CASH
			booking.save(update_fields=['status'])
			return redirect('bookings:success', booking_id=booking.id)
		return redirect(f"/payments/start/{method}/{booking.id}/")

	return render(request, 'bookings/checkout.html', {
		'cart': cart,
		'total': total,
		'traveler_form': traveler_form,
		'payment_form': payment_form,
		'cancellation_policy': 'Free cancellation up to 48 hours before departure/check-in.'
	})


@login_required
def my_bookings(request):
	qb = Booking.objects.filter(user=request.user).order_by('-created_at')
	return render(request, 'bookings/my.html', { 'bookings': qb })


@login_required
def booking_success(request, booking_id):
	booking = get_object_or_404(Booking, id=booking_id, user=request.user)
	return render(request, 'bookings/success.html', { 'booking': booking })


