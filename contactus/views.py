from django.shortcuts import render, redirect
from django.http import  HttpResponse
from contactus.models import sendmessage
from django.contrib import messages

# Create your views here.
def show_contactus(request):
    if request.method == 'POST':
        nm = request.POST['nm']
        em = request.POST['em']
        sub = request.POST['sub']
        msg = request.POST['msg']
        contact = sendmessage(name=nm,email=em,subject=sub,message=msg)
        contact.save()
        messages.info(request, "Your message has been sent!")
        return redirect('../../contactus')


    return render(request,'contactus.html')