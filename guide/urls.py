from django.conf.urls import url
from django.urls import path
from . import views
from user import views as v1

urlpatterns = [
    path('home', views.home),
    path('status',views.status),
    path('uprof', v1.update_profile),
    path('logout', views.logout_r),
]