# Generated by Django 3.0.2 on 2020-02-06 06:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0005_auto_20200206_1207'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='role',
            field=models.TextField(blank=True),
        ),
        migrations.AlterField(
            model_name='profile',
            name='birth_date',
            field=models.DateField(blank=True),
        ),
    ]
