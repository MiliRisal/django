# Generated by Django 3.0.2 on 2020-02-06 07:14

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='sendmessage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20)),
                ('email', models.CharField(max_length=50)),
                ('subject', models.CharField(max_length=30)),
                ('message', models.TextField(max_length=200)),
            ],
        ),
    ]
