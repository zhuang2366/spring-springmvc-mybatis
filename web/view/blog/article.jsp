<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta name="applicable-device" content="pc,mobile">
    <title>详情-${essay.title}</title>
    <meta name="keywords" content="Word,中,如何,手动,制作,目"/>
    <meta name="description"
          content="通常情况下，我们用Word制作目录，都是根据内容自动生成出来的。不过根据不同的需求，也有许多人希望能够手动制作目录，不要自动生成的。 当然，各有各的优势，自动生成目录不"/>
    <link href="${pageContext.request.contextPath}/static/blog/css/swiper.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/static/blog/css/mian.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="topmenu" id="tophead">
    <div class="wrap">
        <div id="mobilemenu"></div>
        <div class="mask"></div>
        <div class="logo"><a href='${pageContext.request.contextPath}/web/index'><img
                src="${pageContext.request.contextPath}/static/blog/images/logo.jpg" alt="logo" width="280" height="70"></a>
        </div>
        <div class="menu">
            <ul id="nav">
                <li class="closex"><i class="iconfont icon-guanbi"></i></li>
                <li class="mainlevel"><a href='${pageContext.request.contextPath}/web/index'>网站首页</a></li>
                <li class='mainlevel'><a href='javascript:0' class='hover'>${essay.tagName}</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="search"><i class="iconfont icon-sousuo"></i></div>
    </div>
</div>

<div class="subbody">
    <div class="wrap">
        <div class="row">
            <div class="left">
                <div class="article-con">
                    <div class="postion">当前位置：<a href='${pageContext.request.contextPath}/web/index'>主页</a> > <a
                            href='javascript:0'>${essay.tagName}</a></div>
                    <div class="art-con">
                        <h1>${essay.title}</h1>
                        <div class="posts-default-info">
                            <ul>
                                <li class="ico-cat"><i class="iconfont icon-liebiao"></i> <a
                                        href='javascript:0'>${essay.tagName}</a></li>
                                <li class="ico-time"><i class="iconfont icon-iconfontshijian"></i> <fmt:formatDate value="${essay.time}" pattern="yyyy-MM-d HH:mm:ss"/></li>
                                <li class="ico-eye"><i class="iconfont icon-yanjing1"></i> ${essay.previewNum}</li>
                            </ul>
                        </div>
                        <div class="art-txt">
                            ${essay.content}
                        </div>
                        <div class="pronext">
                            <div class="propage">

                                <span>上一篇：
                                    <c:if test="${up.title == null}">
                                        没有上一篇了
                                    </c:if>
                                    <c:if test="${up.title != null}">
                                        <a href='${pageContext.request.contextPath}/web/get/${up.id}'>
                                            <c:if test="${up.title.length() >= 18}">
                                                ${fn:substring(up.title, 0, 18)}……
                                            </c:if>
                                            <c:if test="${up.title.length() < 18}">
                                                ${up.title}
                                            </c:if>
                                        </a>
                                    </c:if>
                                </span>
                            </div>
                            <div class="nextpage">
                                <span>下一篇：
                                    <c:if test="${next.title == null}">
                                        没有下一篇了
                                    </c:if>
                                    <c:if test="${next.title != null}">
                                        <a href='${pageContext.request.contextPath}/web/get/${next.id}'>
                                            <c:if test="${next.title.length() >= 18}">
                                                ${fn:substring(next.title, 0, 18)}……
                                            </c:if>
                                            <c:if test="${next.title.length() < 18}">
                                                ${next.title}
                                            </c:if>
                                        </a>
                                    </c:if>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="article-con">
                    <h3 class="subtitle"><span>猜你喜欢</span></h3>
                    <ul class="sub-news">
                        <c:forEach items="${rand}" var="item">
                            <li><a href='${pageContext.request.contextPath}/web/get/${item.id}'
                                   title="${item.title}">${item.title}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <!-- 右侧 -->
            <div class="right">
                <div class="widget">
                    <h3><span>热门标签</span></h3>
                    <div class="widge_tags">

                        <div class="tag-items">
                            <c:forEach items="${tagList}" var="item">
                                <a href='${pageContext.request.contextPath}/web/essayList/${item.id}'>${item.name}</a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="widget">
                    <h3><span>随便看看</span></h3>
                    <ul class="recent-posts-widget">

                        <c:forEach items="${kk}" var="item">
                            <li>

                                <div class="recent-posts-img"><a
                                        href='${pageContext.request.contextPath}/web/get/${item.id}'><img
                                        src="${item.previewImg}"
                                        class="thumbnail"
                                        alt="${item.title}"></a>
                                </div>

                                <div class="recent-posts-title">

                                    <h4 class="tit"><a
                                            href='${pageContext.request.contextPath}/web/get/${item.id}'>${item.title}</a>
                                    </h4>

                                    <span class="info"><i class="iconfont icon-yanjing1"></i> ${item.previewNum}</span>
                                </div>

                            </li>
                        </c:forEach>

                    </ul>
                </div>
                <div class="widget">
                    <h3><span>热门阅读</span></h3>
                    <ul class="hot-article">
                        <c:forEach items="${rm}" var="item">
                            <li><a href="${pageContext.request.contextPath}/web/get/${item.id}" target="_blank"
                                   class="img"><i
                                    class="iconfont icon-fenxiang"></i><img src="${item.previewImg}" class="thumbnail"
                                                                            alt="${item.title}"></a></li>
                        </c:forEach>
                    </ul>
                </div>

                <div class="widget">
                    <h3><span>关注我们</span></h3>
                    <div class="attentionus">
                        <ul class="items clearfix">
                            <span class="social-widget-link social-link-wechat"> <span class="social-widget-link-count"><i
                                    class="iconfont icon-iconfontmoban"></i>微信公众号</span> <span
                                    class="social-widget-link-title">微信公众号</span> <a id="tooltip-s-weixin"
                                                                                     href="javascript:void(0);"></a> </span>
                            <span class="social-widget-link social-link-taobao-wangxiao"> <span
                                    class="social-widget-link-count"><i
                                    class="iconfont icon-taobao1"></i>淘宝网店</span> <span
                                    class="social-widget-link-title">淘宝网店</span> <a href='javascript:0' target="_blank"
                                                                                    rel="nofollow"></a> </span> <span
                                class="social-widget-link social-link-ketang"> <span class="social-widget-link-count"><i
                                class="iconfont icon-xuexi"></i>在线课堂</span> <span
                                class="social-widget-link-title">在线课堂</span> <a href='javascript:0' target="_blank"
                                                                                rel="nofollow"></a> </span>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="wrap">
        <div class="copyright-footer">
            <p>
                Copyright &copy; 2002-2020 折优优 版权所有
                <a href='javascript:0' target="_blank" rel="nofollow">皖ICP备17011273号-1</a>
                |
                <a href='javascript:0' target="_blank">XML地图</a>
                |
                <a href='${pageContext.request.contextPath}' target="_blank">后台管理系统</a>
            </p>
        </div>
    </div>
</div>
<!-- 返回顶部按钮-->
<div class="backtop" id="backtop"><i class="iconfont icon-xiangshang"></i></div>
<!-- 搜索框-->
<div class="search-box">
    <div class="search-close"><i class="iconfont icon-guanbi"></i></div>
    <div class="search-con">
        <dl class="se">
            <form name="formsearch" action="${pageContext.request.contextPath}/web/essayQuery">
                <input type="hidden" name="kwtype" value="0"/>
                <dt>
                    <input name="title" type="text" class="search-keyword" id="search-keyword" placeholder="输入标题"/>
                </dt>
                <dd>
                    <button type="submit"><i class="iconfont icon-sousuo"></i></button>
                </dd>
            </form>
        </dl>
        <div class="search-tips">大家都在搜</div>
        <div class="search-as"> 　
            <c:forEach items="${tagList}" var="item">
                <a href='${pageContext.request.contextPath}/web/essayList/${item.id}'>${item.name}</a>
            </c:forEach>
        </div>
    </div>
<!-- 微信二维码-->
<div class="f-weixin-dropdown">
    <div class="tooltip-weixin-inner">
        <h3>微信公众号</h3>
        <div class="qcode"><img src="images/follow-weixin.png" width="160" height="160"/></div>
    </div>
    <i class="iconfont icon-guanbi close_tip"></i></div>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/blog/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/blog/js/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/blog/js/slide.js"></script>
<script> window._bd_share_config = {
    "common": {
        "bdSnsKey": {},
        "bdText": "",
        "bdMini": "2",
        "bdMiniList": false,
        "bdPic": "",
        "bdStyle": "0",
        "bdSize": "24"
    }, "share": {}
};
with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
</body>
</html>
