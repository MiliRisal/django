from django.urls import path
from loanApply import views
urlpatterns = [
    path('',views.apply_loan),
    path('update/<id>',views.update),
    path('delete/<id>',views.delete),
    path('myloan/',views.show_loan),
]
