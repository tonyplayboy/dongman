from django.contrib import admin
from . models import *


class TypeInfoAdmin(admin.ModelAdmin):
    list_display = ['id', 'ttitle']


class GoodsInfoAdmin(admin.ModelAdmin):
    list_per_page = 15
    list_display = ['id', 'gtype', 'gtitle', 'gprice', 'gunit', 'gkucun', 'gcontent']


admin.site.site_header = '小彩虹动漫管理系统'
admin.site.site_title = '小彩虹动漫管理系统'
admin.site.register(TypeInfo, TypeInfoAdmin)
admin.site.register(GoodsInfo, GoodsInfoAdmin)
