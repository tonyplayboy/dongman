
from . import views
from django.urls import path, re_path

urlpatterns = [
    # typeid, pageid, sort
    path('list<int:typeid>_<str:pageid>_<str:sort>/', views.goodlist),
    path('<int:id>', views.detail),
]
