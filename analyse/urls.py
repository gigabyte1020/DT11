
from django.conf.urls import url
from django.urls import path
from . import views

urlpatterns = [
    path('create', views.create),
    path('disp', views.disp),
    url(r'^(?P<id>\d+)/$', views.dispdet, name='dispdet'),
]