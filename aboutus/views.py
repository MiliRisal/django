from django.shortcuts import render
from aboutus.models import aboutus

# Create your views here.
def show_aboutus(request):
    about = aboutus.objects.all()
    return render(request,'aboutus.html', {'a': about})
