<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>博客后台管理系统</title>
    <%--顶部--%>
    <%@include file="static/public/head.jsp"%>

    <style>
        html,body{
            height: 100%;
            overflow: hidden;
        }
        .column{
            padding: 2px;
            margin-top: 24px;
        }
        .panel .panel-heading {
            padding-left: 20px;
        }
        .panel .panel-collapse .panel-body{
            padding-left: 45px;
        }
        .navbar-right li{
            line-height: 50px;
        }
    </style>
</head>
<body>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">博客后台管理系统</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="#">后台</a>
                        </li>
                        <li>
                            <a target="_blank" href="${pageContext.request.contextPath}/web/index">前台</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <img class="img-circle" width="45" height="45" src="https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2328622225,2844636259&fm=26&gp=0.jpg">
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">花也寂寞<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">个人中心</a>
                                </li>
                                <li>
                                    <a href="#">修改密码</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>
</div>

<div class="row" style="height: 100%;">
    <div class="col-md-2 column">
        <div class="panel-group" id="panel-659633">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a class="panel-title" data-toggle="collapse" data-parent="#panel-659633"
                       href="#panel-element-590421" ><span class="glyphicon glyphicon-bookmark"></span> 标签管理</a>
                </div>
                <div id="panel-element-590421" class="panel-collapse in">
                    <div class="panel-body">
                        <a href="${pageContext.request.contextPath}/view/tag/tag_add.jsp" target="myFrame"><span class="glyphicon glyphicon-plus"></span> 添加标签</a>
                    </div>
                    <div class="panel-body">
                        <a href="${pageContext.request.contextPath}/tag/list" target="myFrame"><span class="glyphicon glyphicon-th-list"></span> 标签列表</a>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-659633"
                       href="#panel-element-716608"><span class="glyphicon glyphicon-book"></span> 博客管理</a>
                </div>
                <div id="panel-element-716608" class="panel-collapse collapse">
                    <div class="panel-body">
                        <a href="${pageContext.request.contextPath}/essay/add" target="myFrame"><span class="glyphicon glyphicon-plus"></span> 添加博客</a>
                    </div>
                    <div class="panel-body">
                        <a href="${pageContext.request.contextPath}/essay/list" target="myFrame"><span class="glyphicon glyphicon-th-list"></span> 博客列表</a>
                    </div>
                    <div class="panel-body">
                        <a href="${pageContext.request.contextPath}/view/essay/echarts_tag.jsp" target="myFrame"><span class="glyphicon glyphicon-th-list"></span> 标签统计</a>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-659633"
                       href="#panel-element-716609"><span class="glyphicon glyphicon-question-sign"></span> 关于系统</a>
                </div>
                <div id="panel-element-716609" class="panel-collapse collapse">
                    <div class="panel-body">
                        <p>版本所有 &copy;</p>
                        <p>备案编号 &reg;</p>
                        <p>技术支持 &trade;</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-10 column" style="height: 100%;">
        <div class="panel panel-default" style="height: 100%;">
            <div class="panel-heading">
                <h3 class="panel-title"><span id="spanId" class="glyphicon glyphicon-tags"></span> <font id="panelTitle">内容列表</font></h3>
            </div>
            <div class="panel-body" style="height: 100%;">
                <iframe src="${pageContext.request.contextPath}/view/home/home.jsp" style="height: 100%;" name="myFrame" frameborder="0" width="100%"></iframe>
            </div>
        </div>
    </div>
</div>

<%--底部--%>
<%@include file="static/public/bottom.jsp"%>

<script>
    let atag = $(".panel-body a");
    atag.click(function(){
        let tagText = $(this).text();
        let spanId = $(this).children().attr('class');
        $('#panelTitle').text(tagText);
        $('#spanId').attr('class',spanId);
    });

</script>
</body>
</html>