from django.forms import ModelForm
from .models import SoldItem,InvoiceSells
# from widgets import WhateverWidgetIWant

class InvoiceSellsForm(ModelForm):
    """Form definition for InvoiceSells."""

    class Meta:
        """Meta definition for InvoiceSellsform."""

        model = InvoiceSells
        fields = ('customer','mobile','total_amount','discount','status','payment_mode')

class SoldItemForm(ModelForm):
    class Meta:
        model = SoldItem
        exclude = ('invoice_id',)