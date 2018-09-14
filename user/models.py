from django.db import models


class User(models.Model):
    username = models.CharField(max_length=20, db_index=True)
    password = models.CharField(max_length=40, db_index=True)
    email = models.CharField(max_length=30, db_index=True)
    ushou = models.CharField(max_length=20, db_index=True, default='')
    address = models.CharField(max_length=100, db_index=True, default='')
    post = models.CharField(max_length=6, db_index=True, default='')
    phone = models.CharField(max_length=11, db_index=True, default='')
