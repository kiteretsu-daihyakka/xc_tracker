from django.forms import ModelForm
from .models import SoldItem
# from widgets import WhateverWidgetIWant

# class SoldItemForm(forms.ModelForm):
    # def __init__(self, *args, **kwargs):
        # super(SoldItemForm, self).__init__(*args, **kwargs)
        # self.fields['item'].queryset = SoldItem.objects.filter(tenant=self.current_user)

    # class Meta:
        # model = SoldItem