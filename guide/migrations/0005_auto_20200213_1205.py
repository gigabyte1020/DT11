# Generated by Django 3.0.2 on 2020-02-13 06:35

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('guide', '0004_auto_20200213_1117'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='gbook',
            name='reqname',
        ),
        migrations.AddField(
            model_name='gbook',
            name='us',
            field=models.ForeignKey( on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
