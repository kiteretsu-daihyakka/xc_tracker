from django.urls import path
from .views import home,fetch_items

app_name = 'tracker'

urlpatterns = [
	path('',home,name='home'),
	path('fetch-items',fetch_items,name='fetch-items'),
]