from __future__ import unicode_literals
from tinymce.models import HTMLField
from django.db import models


# Create your models here.
# 商品分类
class TypeInfo(models.Model):
    ttitle = models.CharField(max_length=20, db_index=True)
    isDelete = models.BooleanField(default=False)

    def __str__(self):
        return self.ttitle


# 商品
class GoodsInfo(models.Model):
    gtitle = models.CharField(max_length=20)
    # 图片位置
    gpic = models.ImageField(upload_to='goods')
    gprice = models.IntegerField()
    isDelete = models.BooleanField(default=False)
    # 单位
    gunit = models.CharField(max_length=20, default='500g')
    # 点击量  用于人气排序
    gclick = models.IntegerField()
    # 简介
    gjianjie = models.CharField(max_length=200)
    # 库存
    gkucun = models.IntegerField()
    # 详细介绍
    gcontent = HTMLField()
    #
    gtype = models.ForeignKey(TypeInfo, on_delete=models.CASCADE)

    def __str__(self):
        return self.gtitle
