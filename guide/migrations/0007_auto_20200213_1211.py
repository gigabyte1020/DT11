# Generated by Django 3.0.2 on 2020-02-13 06:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('guide', '0006_auto_20200213_1205'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='gbook',
            name='us',
        ),
        migrations.AddField(
            model_name='gbook',
            name='reqname',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]
