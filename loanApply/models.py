from django.db import models
from django.contrib.auth.models import User
from Startup import settings

# Create your models here.
class apply(models.Model):
    contact = models.CharField(max_length=20)
    zipCode = models.CharField(max_length=50)
    amount = models.CharField(max_length=30)
    businessType = models.CharField(max_length=200)
    LoanType = models.CharField(max_length=200)
    email = models.CharField(max_length=200)
    user = models.ForeignKey(User, default=1, on_delete=models.CASCADE)

    def __str__(self):
        return self.email