from django.urls import path
from .views import redirect_page,stock_details

urlpatterns = [
	path('',redirect_page)
]