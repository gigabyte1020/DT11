from django.conf.urls import url
from django.urls import path
from . import views

urlpatterns = [
    path('home', views.home),
    path('status',views.status),
    path('logout', views.logout_r),
]