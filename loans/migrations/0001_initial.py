# Generated by Django 3.0.2 on 2020-02-15 17:41

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='loans',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.FileField(upload_to='')),
                ('title', models.TextField(max_length=100)),
                ('des', models.TextField(max_length=500)),
            ],
        ),
    ]
