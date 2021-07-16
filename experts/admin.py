from django.contrib import admin
from experts.models import expert,sendmessage

# Register your models here.

class ExpertAdmin(admin.ModelAdmin):
    list_display = ('image', 'name', 'des')

class MsgExpert(admin.ModelAdmin):
    list_display = ('receipt', 'msg','user')

admin.site.register(expert, ExpertAdmin)
admin.site.register(sendmessage, MsgExpert)
