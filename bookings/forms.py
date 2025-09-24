from django import forms


class TravelerForm(forms.Form):
	full_name = forms.CharField(max_length=150)
	email = forms.EmailField()
	phone = forms.CharField(max_length=20)
	notes = forms.CharField(required=False, widget=forms.Textarea)


class PaymentChoiceForm(forms.Form):
	PAYMENT_METHODS = [
		('bkash', 'bKash'),
		('nagad', 'Nagad'),
		('card', 'Bank Card'),
		('cod', 'Pay by Cash'),
	]
	method = forms.ChoiceField(choices=PAYMENT_METHODS)


