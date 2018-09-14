# Generated by Django 2.1 on 2018-08-03 01:23

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(db_index=True, max_length=20)),
                ('password', models.CharField(db_index=True, max_length=40)),
                ('email', models.CharField(db_index=True, max_length=30)),
                ('ushou', models.CharField(db_index=True, max_length=20)),
                ('address', models.CharField(db_index=True, max_length=100)),
                ('post', models.CharField(db_index=True, max_length=6)),
                ('phone', models.CharField(db_index=True, max_length=11)),
            ],
        ),
    ]
