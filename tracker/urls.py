from django.urls import path
from .views import redirect_page,home,fetch_items

app_name = 'tracker'

urlpatterns = [
	path('',redirect_page,name='redirecting'),
	path('home',home,name='home'),
	path('fetch-items',fetch_items,name='fetch-items'),
]