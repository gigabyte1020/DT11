
from django.conf.urls import url
from django.urls import path
from . import views
from user import views as v1
urlpatterns = [
    path('create', views.create),
    path('disp', views.disp),
    path('uprof', v1.update_profile),

    url(r'^(?P<id>\d+)/$', views.dispdet, name='dispdet'),
]