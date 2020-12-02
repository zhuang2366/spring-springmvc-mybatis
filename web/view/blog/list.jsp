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
    <title>标签-${tagName}</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link href="${pageContext.request.contextPath}/static/blog/css/swiper.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/static/blog/css/mian.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="topmenu" id="tophead">
    <div class="wrap">
        <div id="mobilemenu"></div>
        <div class="mask"></div>
        <div class="logo"><a href='${pageContext.request.contextPath}/web/index'><img
                src="${pageContext.request.contextPath}/static/blog/images/logo.jpg" alt="博客LOGO" width="280"
                height="70"></a>
        </div>

        <div class="menu">
            <ul id="nav">
                <li class="closex"><i class="iconfont icon-guanbi"></i></li>
                <li class="mainlevel"><a href="${pageContext.request.contextPath}/web/index">网站首页</a></li>
                <li class='mainlevel'><a href="javascript:0" class='hover'>${tagName}</a></li>

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
                <div class="post-nav">
		<span class="cat-post">
			<a href="javascript:0">${tagName}</a>
		</span>
                </div>
                <div class="article_box">

                    <c:forEach items="${listEssay}" var="item">

                        <div class="items">
                            <div class="content-box">
                                <div class="posts-gallery-img">
                                    <a href="${pageContext.request.contextPath}/web/get/${item.id}">
                                        <img class='thumbnail'
                                             src='${item.previewImg}'
                                             alt='${item.title}'/></a>
                                </div>
                                <div class="posts-gallery-content">
                                    <h2><a href="${pageContext.request.contextPath}/web/get/${item.id}" target="_blank">
                                        <c:if test="${item.title.length() >= 20}">
                                            ${fn:substring(item.title, 0, 20)}……
                                        </c:if>
                                        <c:if test="${item.title.length() < 20}">
                                            ${item.title}
                                        </c:if>
                                    </a></h2>
                                    <div class="posts-gallery-text">
                                            ${fn:substring(item.content, 0, 160)}……
                                    </div>
                                    <div class="posts-default-info posts-gallery-info">
                                        <ul>
                                            <li class="ico-cat"><i class="iconfont icon-liebiao"></i> <a
                                                    href="javascript:0">${item.tagName}</a></li>
                                            <li class="ico-time"><i class="iconfont icon-iconfontshijian"></i>
                                                <fmt:formatDate value="${item.time}"
                                                                pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                            </li>
                                            <li class="ico-eye"><i
                                                    class="iconfont icon-yanjing1"></i> ${item.previewNum}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="pages">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/web/listPage/${id}/1">首页</a></li>
                        <script>
                            var pageNum = "${pageNum}";
                            var pageSize = "${pageSize}";
                            var total = "${total}";
                            var pages = "${pages}";

                            for (pageIndex = 1; pageIndex <= pages; pageIndex++) {
                                if (pageNum == pageIndex) {
                                    window.document.write('<li class="thisclass"><a href="${pageContext.request.contextPath}/web/listPage/${id}/' + pageIndex + '">' + pageIndex + '</a></li>')
                                }
                                else{
                                    window.document.write('<li><a href="${pageContext.request.contextPath}/web/listPage/${id}/' + pageIndex + '">' + pageIndex + '</a></li>')
                                }
                            }
                        </script>
                        <%-- <li class="thisclass">1</li>--%>
                        <%-- <li><a href="javascript:0">2</a></li>--%>
                        <%-- <li><a href="javascript:0">3</a></li>--%>

                        <li><a href="${pageContext.request.contextPath}/web/listPage/${id}/${pageNum+1}">下一页</a></li>
                        <li><a href="${pageContext.request.contextPath}/web/listPage/${id}/${pages}">末页</a></li>
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
                                    class="social-widget-link-title">淘宝网店</span> <a href="javascript:0" target="_blank"
                                                                                    rel="nofollow"></a> </span> <span
                                class="social-widget-link social-link-ketang"> <span class="social-widget-link-count"><i
                                class="iconfont icon-xuexi"></i>在线课堂</span> <span
                                class="social-widget-link-title">在线课堂</span> <a href="javascript:0" target="_blank"
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
</div>
</body>
</html>