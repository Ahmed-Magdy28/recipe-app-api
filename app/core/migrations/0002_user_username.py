# Generated by Django 3.2.25 on 2024-10-06 17:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='username',
            field=models.CharField(default='default_username', max_length=255, unique=True),
        ),
    ]
