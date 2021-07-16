from django.db import models
from django.conf import settings

# Create your models here.
class loans(models.Model):
    image = models.FileField();
    title = models.TextField(max_length=100);
    des = models.TextField(max_length=500);
    extend = models.TextField(max_length=100, default=0);