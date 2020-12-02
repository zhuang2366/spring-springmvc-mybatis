<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>修改标签</title>
    <%--顶部--%>
    <%@include file="../../static/public/head.jsp"%>
</head>
<body>

<form class="form-inline" action="${pageContext.request.contextPath}/tag/saveUpdate" method="post">
    <input type="hidden" name="id" value="${tag.id}">
    <div class="form-group">
        <div class="input-group">
            <div class="input-group-addon">标签名称</div>
            <input type="text" name="name" value="${tag.name}" class="form-control" id="exampleInputAmount" placeholder="请输入标签名称">
        </div>
    </div>
    <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span> 修改</button>
</form>

<%--底部--%>
<%@include file="../../static/public/bottom.jsp"%>
</body>
</html>