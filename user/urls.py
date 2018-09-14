"""fresh URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from . import views
from django.urls import re_path

urlpatterns = [
    re_path(r'^register/$', views.register),
    re_path(r'^register_handle/$', views.register_handle),
    re_path(r'^register_exist/', views.register_exist),
    re_path(r'^login/$', views.login),
    re_path(r'^login_handle/$', views.login_handle),
    re_path(r'^logout/$', views.logout),
    re_path(r'^info/$', views.info),
    re_path(r'^order/$', views.order),
    re_path(r'^site/$', views.site),
]
