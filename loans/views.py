from django.shortcuts import render
from  loans.models import loans

# Create your views here.
def show_loans(request):
    loan = loans.objects.all()
    return render(request,'loans.html', {'loans': loan})