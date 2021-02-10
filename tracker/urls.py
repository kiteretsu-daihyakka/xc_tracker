from django.urls import path
from .views import stock_details

urlpatterns = [
	path('',stock_details)
]