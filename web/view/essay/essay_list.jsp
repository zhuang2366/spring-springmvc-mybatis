<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
    <title>文章列表页</title>
    <%--顶部--%>
    <%@include file="../../static/public/head.jsp"%>
</head>
<body>

<form class="form-inline" action="${pageContext.request.contextPath}/essay/query" method="post" role="form">
    <div class="form-group">
        <label class="sr-only">标签</label>
        <select class="form-control" name="tagId">
            <option selected value="0">标签</option>
            <c:forEach items="${tagList}" var="tag">
                <option value="${tag.id}">${tag.name}</option>
            </c:forEach>
        </select>
    </div>
    <div class="form-group">
        <label class="sr-only">状态</label>
        <select class="form-control" name="status">
            <option selected value="0">状态</option>
            <option value="1">轮播</option>
            <option value="2">头条</option>
            <option value="3">看看</option>
            <option value="4">热门</option>
            <option value="5">专栏</option>
        </select>
    </div>
    <div class="form-group">
        <label class="sr-only">标题</label>
        <input type="text" class="form-control" name="title" placeholder="标题">
    </div>
    <button type="submit" class="btn btn-default">查询</button>
    <button type="reset" class="btn btn-default">重置</button>
</form>

<table class="table table-hover table-striped">
    <thead>
    <tr>
        <th>序号</th>
        <th>状态</th>
        <th>标题</th>
        <th>标签名</th>
        <th>发布时间</th>
        <th>预览次数</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:set var="index" value="1"></c:set>
    <c:forEach items="${essayList}" var="essay">
        <tr>
            <td>${index}</td>
            <td>
                <script>
                    //1、轮播，2、头条，3、看看，4、热门，5、专栏
                    status = "${essay.status}";
                    switch (status) {
                        case "1" :
                            window.document.write('<span class="label label-primary">轮播</span>');
                            break;
                        case "2" :
                            window.document.write('<span class="label label-success">头条</span>');
                            break;
                        case "3" :
                            window.document.write('<span class="label label-info">看看</span>');
                            break;
                        case "4" :
                            window.document.write('<span class="label label-warning">热门</span>');
                            break;
                        case "5" :
                            window.document.write('<span class="label label-danger">专栏</span>');
                            break;
                    }
                </script>
            </td>
            <td>
                <a href="javascript:;" onclick="query(${essay.id})">
                    <c:if test="${essay.title.length() >= 30}">
                        ${fn:substring(essay.title, 0, 30)}……
                    </c:if>
                    <c:if test="${essay.title.length() < 30}">
                        ${essay.title}
                    </c:if>
                </a>
            </td>
            <td>${essay.tagName}</td>
            <td><fmt:formatDate value="${essay.time}" pattern="yyyy-MM-d HH:mm:ss" /></td>
            <td><span class="badge">${essay.previewNum}</span></td>
            <td>
                <div class="btn-group">
                    <button type="button" onclick="copyAdd(${essay.id})" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-plus"></span> 复制添加</button>
                    <button type="button" onclick="update(${essay.id})" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span> 修改</button>
                    <button type="button" onclick="query(${essay.id})" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-search"></span> 查询</button>
                    <button type="button" onclick="del(${essay.id})" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span> 删除</button>
                </div>
            </td>
        </tr>
        <c:set var="index" value="${index+1}"></c:set>
    </c:forEach>
    </tbody>
</table>
<!--分页控件-->
<ul id="page" style="margin: 0px;"></ul>

<%--底部--%>
<%@include file="../../static/public/bottom.jsp"%>

<script>

    // 复制添加
    function copyAdd(id){
        window.location.href="${pageContext.request.contextPath}/essay/copyAdd/"+id;
    }

    // 修改
    function update(id){
        window.location.href="${pageContext.request.contextPath}/essay/update/"+id;
    }

    // 查询
    function query(id){
        window.location.href="${pageContext.request.contextPath}/essay/get/"+id;
    }
    // 删除
    function del(id){
       <%--var isok = confirm("确定删除ID为"+id+"的数据吗?");--%>
       <%--if(isok){--%>
       <%--    // 执行删除--%>
       <%--    window.location.href="${pageContext.request.contextPath}/essay/del/"+id;--%>
       <%--}--%>
        // 执行删除
        window.location.href="${pageContext.request.contextPath}/essay/del/"+id;
    }
</script>

<script>
    $(function() {
        var pageNo = "${pageNo}";
        var pageSize = "${pageSize}";
        var total = "${total}";

        $("#page").bootstrapPaginator({
            bootstrapMajorVersion: 3, 		//对应的bootstrap版本
            currentPage: pageNo, 			//当前页数
            numberOfPages: pageSize,		//每次显示页数
            totalPages: Math.ceil(total / pageSize), 	//总页数
            shouldShowPage: true, 			//是否显示该按钮
            useBootstrapTooltip: true,		//鼠标提示
            onPageClicked: function(event, originalEvent, type, page) {
                window.location.href="${pageContext.request.contextPath}/essay/list?pageNum="+page;
            }
        });
    });
</script>


</body>
</html>
