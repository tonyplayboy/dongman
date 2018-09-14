from django.http import HttpResponseRedirect


# 如果登录则转到登录页面
def islogin(func):
    def inner(request, *args, **kwargs):
        if request.session.get('user'):
            return func(request, *args, **kwargs)
        else:
            red = HttpResponseRedirect('/user/login')
            red.set_cookie('last_url', request.get_full_path())
            return red
    return inner
