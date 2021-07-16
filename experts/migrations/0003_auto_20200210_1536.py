# Generated by Django 3.0.2 on 2020-02-10 09:51

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('experts', '0002_msg_user'),
    ]

    operations = [
        migrations.CreateModel(
            name='sendmessage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('receipt', models.CharField(max_length=100)),
                ('msg', models.CharField(max_length=100)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AlterField(
            model_name='expert',
            name='image',
            field=models.FileField(default=0, upload_to=''),
        ),
        migrations.DeleteModel(
            name='msg',
        ),
    ]
