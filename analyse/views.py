from django.contrib.auth.models import User
from django.shortcuts import render, get_object_or_404

# Create your views here.

# render display tour packages page
import user
from analyse.models import *
from home.models import cart


def disp(request):
    form = events.objects.all()
    return render(request, 'disppcks.html', {'form': form})


# render details of tour packages page and books the package
def dispdet(request, id=None):
    movie = get_object_or_404(pckimg, p_name_id=id)
    pdet = get_object_or_404(events, id=id)

    context = {'movie': movie,
               'pdet':pdet
               }
    if request.method == 'POST':
        if request.POST.get('t1'):
            crt = cart()
            pack = get_object_or_404(events, id=id) #id of the packkage
            u_id = request.session.get('id')   #user id of the buyer
            us = get_object_or_404(User, id=u_id)
            crt.user = us
            crt.pck = pack
            crt.num = 1
            crt.save()
            return render(request, 'success.html')
        else:
            return render(request, 'fail1.html')
    return render(request, 'disp1.html', context)




# render tour package creation page
def create(request):
    if request.method == 'POST':
        if request.POST.get('t1'):
            p = package()
            p1 = pckimg()
            p.p_name = request.POST.get('t1')
            p.p_loc = request.POST.get('t2')
            p.p_high = request.POST.get('t3')
            p.p_price = request.POST.get('t4')
            p.p_det = request.POST.get('t5')
            p.p_app = request.POST.get('t6')
            p.p_img = request.FILES.get('t7')
            p.save()
            p1.p_name = p
            p1.p_img1 = request.FILES.get('t7')
            p1.p_img2 = request.FILES.get('t8')
            p1.p_img3 = request.FILES.get('t9')
            p1.save()
            return render(request, 'success.html')
        else:
            return render(request, 'create.html')
    else:
        return render(request, 'create.html')
