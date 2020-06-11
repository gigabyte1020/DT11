# Generated by Django 3.0.2 on 2020-02-07 05:12

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('home', '0009_auto_20200206_1252'),
    ]

    operations = [
        migrations.CreateModel(
            name='SellProfile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pno', models.IntegerField(blank=True)),
                ('email', models.EmailField(blank=True, max_length=254)),
                ('location', models.TextField(blank=True)),
                ('exp', models.TextField(blank=True)),
                ('role', models.TextField(blank=True)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
