from django.conf.urls import url
from django.urls import path
from . import views
from .views import log

urlpatterns = [
    path('', views.home),
    path('reg', views.reg),
    path('log', views.log),
    path('discount', views.discount),
    path('about', views.about),
    path('sellreg', views.sellreg),
    # path('uprof', views.update_profile),
]
