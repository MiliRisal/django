from django.shortcuts import render, redirect
from django.http import HttpResponse
from loanApply.models import apply
from django.contrib import messages


# Create your views here.
def apply_loan(request):
    if request.method == 'POST':
        contact = request.POST['contact']
        zipCode = request.POST['zipCode']
        amount = request.POST['amount']
        businessType = request.POST['businessType']
        LoanType = request.POST['LoanType']
        email = request.POST['email']
        user = request.user
        LoanApply = apply(contact=contact,zipCode=zipCode,amount=amount,businessType=businessType,LoanType=LoanType,email=email, user=user)
        LoanApply.save()
        messages.info(request, "Your have applied for loan!")
        return redirect('../../loanApply/myloan')
        # return HttpResponse('<script>alert("Your have applied for loan!")</script>')

    return render(request,'loanApply.html')

def update(request, id):
    app = apply.objects.get(id=id)
    if request.method == 'POST':
        app.contact = request.POST['contact']
        app.zipCode = request.POST['zipCode']
        app.amount = request.POST['amount']
        app.businessType = request.POST['businessType']
        app.LoanType = request.POST['LoanType']
        app.email = request.POST['email']
        app.save()
        messages.info(request, "Updated!!")
        return redirect('../../loanApply/myloan')
    return render(request, 'show_and_update.html', {'app': app})


def show_loan(request):
    apps = apply.objects.filter(user = request.user)
    return render(request, 'show_and_update.html', {'apps': apps})


def delete(request, id):
    app = apply.objects.get(id=id)
    app.delete()
    messages.info(request, "Deleted!!")
    return redirect('../../loanApply/myloan')


