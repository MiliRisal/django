from django.db import models
from django.conf import settings

# Create your models here.
class aboutus(models.Model):
    title = models.CharField(max_length=100);
    des = models.TextField(max_length=50000);
    name = models.CharField(max_length=100);
    post = models.CharField(max_length=100);
    img = models.FileField();


