from django.urls import path
from .views import start_payment, payment_webhook, payment_return

urlpatterns = [
	path('start/<str:method>/<int:booking_id>/', start_payment, name='start'),
	path('webhook/<str:provider>/', payment_webhook, name='webhook'),
	path('return/<str:provider>/', payment_return, name='return'),
]


