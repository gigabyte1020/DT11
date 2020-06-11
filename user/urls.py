
from django.conf.urls import url
from django.urls import path

import home
from . import views

urlpatterns = [
    path('home', views.home),
    path('holidays', views.holidays),
    path('sgt', views.sgt),
    path('guide', views.guides),
    path('uprof', views.update_profile),
    path('boo', views.boo),
    path('logout', views.logout_r),
]