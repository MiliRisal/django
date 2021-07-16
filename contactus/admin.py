from django.contrib import admin
from contactus.models import sendmessage

# Register your models here.
class ContactAdmin(admin.ModelAdmin):
    list_display = ('name','email','subject','message')

admin.site.register(sendmessage,ContactAdmin)