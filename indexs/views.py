from . models import GoodsInfo, TypeInfo
from django.shortcuts import render
from django.core.paginator import Paginator


# Create your views here.
# 查询每类动漫最新的4个和点击率最高的4个
def index(request):
    """
    index函数负责查询页面中需要展示的动漫内容，
    主要是每类最新的4种动漫和4中点击率最高的动漫，
    每类动漫需要查询2次
    """
    count = request.session.get('count')
    fruit = GoodsInfo.objects.filter(gtype__id=9).order_by("-id")[:4]
    fruit2 = GoodsInfo.objects.filter(gtype__id=9).order_by("-gclick")[:4]
    fish = GoodsInfo.objects.filter(gtype__id=12).order_by("-id")[:4]
    fish2 = GoodsInfo.objects.filter(gtype__id=12).order_by("-gclick")[:3]
    meat = GoodsInfo.objects.filter(gtype__id=13).order_by("-id")[:4]
    meat2 = GoodsInfo.objects.filter(gtype__id=13).order_by("-gclick")[:4]
    egg = GoodsInfo.objects.filter(gtype__id=14).order_by("-id")[:4]
    egg2 = GoodsInfo.objects.filter(gtype__id=14).order_by("-gclick")[:4]
    vegetables = GoodsInfo.objects.filter(gtype__id=15).order_by("-id")[:4]
    vegetables2 = GoodsInfo.objects.filter(gtype__id=15).order_by("-gclick")[:4]
    frozen = GoodsInfo.objects.filter(gtype__id=16).order_by("-id")[:4]
    frozen2 = GoodsInfo.objects.filter(gtype__id=16).order_by("-gclick")[:4]
    # count = CartInfo.objects.filter(
    #     user_id=request.session.get('userid')).count()   'count':count,
    # # 构造上下文
    x = request.session.get('user')
    context = {
        'title': '首页', 'fruit': fruit,
               'fish': fish, 'meat': meat, 'egg': egg,
               'vegetables': vegetables, 'frozen': frozen,
               'fruit2': fruit2, 'fish2': fish2, 'meat2': meat2,
               'egg2': egg2, 'vegetables2': vegetables2, 'frozen2': frozen2,
               'guest_cart': 1, 'page_name': 0, 'count': count,
        'user': request.session.get('user')
    }

    # 返回渲染模板
    return render(request, 'indexs/index.html', context)


# 动漫列表
def goodlist(request, typeid, pageid, sort):
    """
    goodlist函数负责展示某类动漫的信息。
    url中的参数依次代表
    typeid:动漫类型id;selectid:查询条件id，1为根据id查询，2位根据价格查询，3位根据点击量查询
    """
    sumGoodList = []
    count = request.session.get('count')
    # 获取最新发布的动漫
    newgood = GoodsInfo.objects.all().order_by('-id')[:2]
    # 根据条件查询所有动漫
    if sort == '1':  # 按最新   gtype_id  , gtype__id  指typeinfo_id

        sumGoodList = GoodsInfo.objects.filter(
            gtype_id=typeid).order_by('-id')
    elif sort == '2':  # 按人气
        sumGoodList = GoodsInfo.objects.filter(
            gtype__id=typeid).order_by('gprice')
    elif sort == '3':  # 按点击量
        sumGoodList = GoodsInfo.objects.filter(
            gtype__id=typeid).order_by('-gclick')
    # 分页
    paginator = Paginator(sumGoodList, 15)
    goodList = paginator.page(int(pageid))
    pindexlist = paginator.page_range
    # print pindexlist    xrange(1,2)
    # 确定动漫的类型
    goodtype = TypeInfo.objects.get(id=typeid)
    # count = CartInfo.objects.filter(
    #     user_id=request.session.get('userid')).count()
    # 构造上下文  'count': count,
    context = {'title': '动漫详情',  'list': 1,
               'guest_cart': 1, 'goodtype': goodtype,
               'newgood': newgood, 'goodList': goodList,
               'typeid': typeid, 'sort': sort,
               'pindexlist': pindexlist, 'pageid': int(pageid), 'count': count,
               'user': request.session.get('user')}

    # 渲染返回结果
    return render(request, 'indexs/list.html', context)


def detail(request, id):
    goods = GoodsInfo.objects.get(pk=int(id))
    goods.gclick=goods.gclick+1
    goods.save()
    # 查询当前动漫的类型   goodsinfo__id 值
    # goodtype = TypeInfo.objects.get(goodsinfo__id=id)
    goodtype = goods.gtype
    # type = TypeInfo()

    count = request.session.get('count')
    # goods.gtype = typeinfo    goods.gtype.goodsinfo_set -> typeinfo.goodsinfo_set
    news = goods.gtype.goodsinfo_set.order_by('-id')[0:2]
    # print '*' * 10
    # print news[0].gtitle
    # print goodtype    猪牛羊肉
    # print goods.gtype  猪牛羊肉

    context = {'title': goods.gtype.ttitle, 'guest_cart': 1,
             'g': goods, 'newgood': news, 'id': id,
             'isDetail': True, 'list': 1, 'goodtype': goodtype, 'count': count,
             'user': request.session.get('user')}
    response = render(request, 'indexs/detail.html', context)

    # 使用cookies记录最近浏览的动漫id

    # 获取cookies
    goods_ids = request.COOKIES.get('goods_ids', '')
    # 获取当前点击动漫id
    goods_id = '%d' % goods.id
    # 判断cookies中动漫id是否为空
    if goods_ids != '':
        # 分割出每个动漫id
        goods_id_list = goods_ids.split(',')
        # 判断动漫是否已经存在于列表
        if goods_id_list.count(goods_id) >= 1:
            # 存在则移除
            goods_id_list.remove(goods_id)
        # 在第一位添加
        goods_id_list.insert(0, goods_id)
        # 判断列表数是否超过5个
        if len(goods_id_list) >= 6:
            # 超过五个则删除第6个
            del goods_id_list[5]
        # 添加动漫id到cookies
        goods_ids = ','.join(goods_id_list)
    else:
        # 第一次添加，直接追加
        goods_ids = goods_id
    response.set_cookie('goods_ids', goods_ids)

    return response
