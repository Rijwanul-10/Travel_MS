from django.db import models
from bookings.models import Booking


class Payment(models.Model):
	BKASH = 'bkash'
	NAGAD = 'nagad'
	CARD = 'card'
	COD = 'cod'

	METHODS = [
		(BKASH, 'bKash'),
		(NAGAD, 'Nagad'),
		(CARD, 'Card'),
		(COD, 'Pay by Cash'),
	]

	PENDING = 'PENDING'
	SUCCESS = 'SUCCESS'
	FAILED = 'FAILED'

	STATUS = [
		(PENDING, 'Pending'),
		(SUCCESS, 'Success'),
		(FAILED, 'Failed'),
	]

	booking = models.ForeignKey(Booking, on_delete=models.CASCADE, related_name='payments')
	method = models.CharField(max_length=10, choices=METHODS)
	amount = models.DecimalField(max_digits=10, decimal_places=2)
	status = models.CharField(max_length=10, choices=STATUS, default=PENDING)
	provider_reference = models.CharField(max_length=100, blank=True)
	extra = models.JSONField(default=dict, blank=True)
	created_at = models.DateTimeField(auto_now_add=True)

	def __str__(self):
		return f"Payment {self.id} for Booking {self.booking_id}"


