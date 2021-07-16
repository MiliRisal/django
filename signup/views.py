from django.contrib import auth
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib import messages


def show_signup(request):
    if request.method == 'POST':
        fn = request.POST['fn']
        ln = request.POST['ln']
        em = request.POST['em']
        un = request.POST['un']
        pw = request.POST['pw']
        user = User.objects.create_user(first_name=fn, last_name=ln, email=em, username=un, password=pw)
        user.save()
        messages.info(request, "Registered Sucessfully!")
        return redirect('../../user/login')
    return render(request, 'signup.html')


def show_login(request):
    if request.method == 'POST':
        un = request.POST['un']
        pw = request.POST['pw']
        usr = auth.authenticate(username=un, password=pw)
        if usr is not None:
            auth.login(request, usr)

            messages.info(request, "Login Sucessfully!")
            return redirect('../../')
        else:
            messages.info(request, "invalid username or password!")
            return redirect('../../user/login')

    return render(request, 'login.html')


def do_logout(request):
    auth.logout(request)
    messages.info(request, "Logout Sucessfully!")
    return redirect('../../')



