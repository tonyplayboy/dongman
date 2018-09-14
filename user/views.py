from django.http import JsonResponse, HttpResponseRedirect
from django.shortcuts import render, redirect
from .models import *
from .islogin import islogin
from hashlib import sha1
from indexs.models import GoodsInfo


def register(request):
    return render(request, 'user/register.html')


def register_handle(request):
    post_info = request.POST
    # 后端判断密码与确认密码
    if post_info['pwd'] != post_info['cpwd']:
        return redirect('/user/register/')

    user = User()
    user.username = post_info['user_name']
    s1 = sha1()
    s1.update(post_info['pwd'].encode('utf8'))
    user.password = s1.hexdigest()
    user.email = post_info['email']
    user.save()
    return redirect('/user/login/')


# 判断用户是否已经存在
def register_exist(requset):
    uname = requset.GET.get('uname')
    count = User.objects.filter(username=uname).count()
    return JsonResponse({'count': count})


def login(request):
    context = {
        'title': '用户登录'
    }
    return render(request, 'user/login.html', context)


def login_handle(request):
    # 先从session里面找
    post = request.POST
    # 选中是1,没选中是0
    jizhu = post.get('isCheck', 0)
    user_result = User.objects.filter(username=post['username'])

    if len(user_result) != 0:
        user = user_result[0]
        s1 = sha1()
        s1.update(post['pwd'].encode('utf8'))
        if s1.hexdigest() == user.password:
            # last_url = request.COOKIES.get('url', '/')
            if jizhu == '1':
                # session 3天不过期
                request.session.set_expiry(3600 * 24 * 3)
                request.session['user'] = user
            else:
                # session 对话结束即过期
                request.session.set_expiry(0)
                request.session['user'] = user
            context = {
                'title': '用户登录',
                'code': 2,
                'message': '登录成功',
                'last_url': request.COOKIES.get('last_url', '/')
            }
            return JsonResponse(context)
        else:
            context = {'title': '用户登录',
                       'code': 1,
                       'message': '密码错误',
                       }
            return JsonResponse(context)
    else:
        context = {'title': '用户登录',
                   'code': 0,
                   'message': '用户名不存在',
                   }
        return JsonResponse(context)


def logout(request):
    request.session.flush()
    # del request.session["user"]
    return redirect('/user/login/')


@islogin
def info(request):
    # 最近浏览
    goods_ids = request.COOKIES.get('goods_ids', '')
    goods_id_list = goods_ids.split(',')
    goods_list = []
    if len(goods_ids):
        for goods_id in goods_id_list:
            goods_list.append(GoodsInfo.objects.get(id=int(goods_id)))
    context = {
        'title': '用户中心',
        'info': 1,
        'user': request.session['user'],
        'goods_list': goods_list,
    }
    return render(request, 'user/user_center_info.html', context)


@islogin
def order(request):
    context = {'title': '用户中心', 'page_name': 1, 'order': 1}
    return render(request, 'user/user_center_order.html', context)


@islogin
def site(request):
    user = User.objects.get(id=request.session['user'].pk)
    if request.method == 'POST':
        post_info = request.POST
        user.ushou = post_info.get('ushou')
        user.address = post_info.get('address')
        user.phone = post_info.get('phone')
        user.post = post_info.get('post')
        user.save()
    context = {'title': '用户中心', 'user': user, 'page_name': 1, 'site': 1}
    return render(request, 'user/user_center_site.html', context)
