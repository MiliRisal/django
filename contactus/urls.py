from django.urls import path
from contactus import views
urlpatterns = [
    path('',views.show_contactus),
]