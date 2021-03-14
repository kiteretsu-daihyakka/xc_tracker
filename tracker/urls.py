from django.urls import path
from .views import redirect_page,home,fetch_items
# from django.contrib.auth.models import User as UserModel

app_name = 'tracker'

urlpatterns = [
	#path('',redirect_page,name='redirecting'),
	path('',home,name='home'),
	path('fetch-items',fetch_items,name='fetch-items'),
]