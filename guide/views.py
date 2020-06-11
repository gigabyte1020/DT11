import profile

from django.contrib.auth import logout
from django.shortcuts import render, redirect, get_object_or_404
# Create your views here.
import analyse
from analyse.views import disp, sgts
from guide.models import gdet
from home.models import Profile


def home(request):
    # movie = get_object_or_404(gdet, id=id)
    return render(request,'guidehome.html', {"id": id})
def status(request):
    return render(request,'appstat.html', {"id": id})


def logout_r(request):
    logout(request)
    return redirect('/')