# Generated by Django 3.0.2 on 2020-02-13 05:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('guide', '0003_auto_20200213_1100'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='gbook',
            name='reqs',
        ),
        migrations.AddField(
            model_name='gbook',
            name='reqname',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]
