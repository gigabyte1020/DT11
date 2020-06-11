from django.db import models


# Create your models here.

class events(models.Model):
    p_name1 = models.CharField(max_length=300, verbose_name="Name of Eevnt", )
    p_loc1 = models.CharField(max_length=300, verbose_name="Location")
    p_det1 = models.TextField(blank=True, verbose_name="Additional Details")
    p_high1 = models.TextField(blank=True, verbose_name="Highlights")  # highlists list
    p_price1 = models.DateField(blank=True, verbose_name="Date")
    p_app1 = models.BooleanField(default=False, null=True, verbose_name="Approval")
    p_img1 = models.FileField(upload_to='media/', verbose_name="Main Image")
    def __str__(self):
        return self.p_name1

    class Meta:
        verbose_name = "Event"
        verbose_name_plural = "Events"

class package(models.Model):
    p_name = models.CharField(max_length=300, verbose_name="Name of Package", )
    p_loc = models.CharField(max_length=300, verbose_name="Location")
    p_det = models.TextField(blank=True, verbose_name="Additional Details")
    p_high = models.TextField(blank=True, verbose_name="Tour Highlights")  # highlists list
    p_price = models.TextField(blank=True, verbose_name="Price")
    p_app = models.BooleanField(default=False, null=True, verbose_name="Approval")
    p_img = models.FileField(upload_to='media/', verbose_name="Main Image")

    def __str__(self):
        return self.p_name


class pckimg(models.Model):
    p_name = models.OneToOneField(events, on_delete=models.CASCADE, verbose_name="Event")
    p_img1 = models.FileField(upload_to='media/', verbose_name="Image 1")
    p_img2 = models.FileField(upload_to='media/', verbose_name="Image 2")
    p_img3 = models.FileField(upload_to='media/', verbose_name="Image 3")

    def __str__(self):
        return self.p_name.p_name1

    class Meta:
        verbose_name = "Event Image"
        verbose_name_plural = "Event Images"


class sgts(models.Model):
    s_name = models.CharField(max_length=300, verbose_name="Name")
    s_url = models.CharField(max_length=300, verbose_name="Funds")

    def __str__(self):
        return self.s_name

    class Meta:
        verbose_name = "Community Name"
        verbose_name_plural = "Funds raised"

