<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>标签列表</title>
    <%--顶部--%>
    <%@include file="../../static/public/head.jsp"%>
</head>
<body>

<c:if test="${msg != ''}">
    <div class="alert alert-info alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>提示</strong> ${msg}
    </div>
</c:if>


<table class="table table-hover table-striped">
    <thead>
    <tr>
        <th>序号</th>
        <th>标签名</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>

    <c:set var="index" value="1"></c:set>
    <c:forEach items="${list}" var="tag">
        <tr>
            <td>${index}</td>
            <td>${tag.name}</td>
            <td>
                <div class="btn-group">
                    <button type="button" onclick="update(${tag.id})" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span> 修改</button>
                    <button type="button" onclick="del(${tag.id})" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span> 删除</button>
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
    function del(id){
        window.location.href="${pageContext.request.contextPath}/tag/delete?id="+id;
    }

    function update(id){
        window.location.href="${pageContext.request.contextPath}/tag/update?id="+id;
    }


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
                window.location.href="${pageContext.request.contextPath}/tag/list?pageNum="+page;
            }
        });
    });
</script>

</body>
</html>