from django.urls import path
from aboutus import views
urlpatterns = [
    path('',views.show_aboutus)
]
