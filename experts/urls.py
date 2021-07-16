from django.urls import path
from experts import views
urlpatterns =[
    path('',views.show_expert),

]