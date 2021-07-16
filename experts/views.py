from django.shortcuts import render, redirect
from experts.models import expert,sendmessage
from django.http import  HttpResponse
from django.contrib.auth.models import User
from django.contrib import messages

def show_expert(request):
    if request.method == 'POST':
        user=request.user
        rec = request.POST['re']
        msg = request.POST['msg']
        sendMsg = sendmessage(receipt=rec,msg=msg,user=user)
        sendMsg.save()
        messages.info(request, "Your message has been sent!")
        return redirect('../../expert')
        # return HttpResponse('<script>alert("Your message has been sent!")</script>')

    experts = expert.objects.all()
    return render(request, 'expert.html', { 'experts': experts})

