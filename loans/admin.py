from django.contrib import admin
from  loans.models import loans

# Register your models here.
class loansAdmin(admin.ModelAdmin):
    list_display = ('image', 'title', 'des', 'extend')

admin.site.register(loans,loansAdmin)
