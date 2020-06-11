from django.contrib.auth.models import User
from django.db import models
from phonenumber_field.modelfields import PhoneNumberField


class gdet(models.Model):
    user= models.OneToOneField(User, on_delete=models.CASCADE)
    pno = PhoneNumberField(blank=True)
    email = models.EmailField(blank=True)
    location = models.CharField(blank=True, max_length=300)
    app = models.BooleanField(null=True)

    def __str__(self):
        return self.user

class bookguide(models.Model):
    guide= models.ForeignKey(User, on_delete=models.CASCADE, related_name="ggg")
    user= models.ForeignKey(User, on_delete=models.CASCADE, related_name="uss")
    avail = models.BooleanField(null=True)

    def __str__(self):
        return self.guide