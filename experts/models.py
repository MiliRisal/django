from django.db import models
from django.contrib.auth.models import User
# Create your models here.
from Startup import settings


class expert(models.Model):
    image = models.FileField(default=0)
    name = models.CharField(max_length=50)
    des = models.CharField(max_length=50)

class sendmessage(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    receipt=models.CharField(max_length=100)
    msg=models.CharField(max_length=100)

    def __str__(self):
        return self.receipt