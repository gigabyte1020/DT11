from django.core.exceptions import ObjectDoesNotExist
from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
from phonenumber_field.modelfields import PhoneNumberField

from analyse.models import package


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    pno = PhoneNumberField(blank=True)
    email = models.EmailField(blank=True)
    birth_date = models.TextField(blank=True)
    location = models.CharField(blank=True, max_length=300)
    role = models.CharField(blank=True, max_length=300)
    app = models.BooleanField(null=True, verbose_name="Approval")
    


@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)


@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()


class cart(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    pck = models.OneToOneField(package, on_delete=models.CASCADE)
    num = models.IntegerField(blank=True, default=1)  # number of people
    date = models.TextField(blank=True)
    status = models.BooleanField(default=False, null=True)
    guide = models.TextField(blank=True)

    def __str__(self):
        return self.user
