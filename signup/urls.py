from django.urls import path
from signup import views
urlpatterns = [
    path('register',views.show_signup),
    path('login',views.show_login),
    path('logout',views.do_logout),
]