from django.db import models


class CartInfo(models.Model):
    user = models.ForeignKey('user.User', on_delete=models.CASCADE)
    goods = models.ForeignKey('indexs.GoodsInfo', on_delete=models.CASCADE)
    count = models.IntegerField(default=0)
