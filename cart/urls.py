
from django.urls import path, re_path

from . import views


urlpatterns = [
    path(r'', views.cart),
    path(r'add<int:gid>_<int:count>/', views.add),
    re_path(r'^edit(\d+)_(\d+)/$', views.edit),
    re_path(r'^delete(\d+)/$', views.delete),
]
