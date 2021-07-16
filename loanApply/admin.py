from django.contrib import admin
from loanApply.models import apply

# Register your models here.
class loanApply(admin.ModelAdmin):
    list_display = ('contact','zipCode','amount','businessType','LoanType','email','user')

admin.site.register(apply,loanApply)

