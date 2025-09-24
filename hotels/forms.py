from django import forms


class HotelSearchForm(forms.Form):
	q = forms.CharField(required=False)
	min_price = forms.DecimalField(required=False, min_value=0)
	max_price = forms.DecimalField(required=False, min_value=0)
	amenities = forms.CharField(required=False, help_text="Comma separated amenities")


