from django.contrib import admin
from aboutus.models import aboutus

class aboutusAdmin(admin.ModelAdmin):
    list_display = ('title','des','name','img','post')

admin.site.register(aboutus, aboutusAdmin)

