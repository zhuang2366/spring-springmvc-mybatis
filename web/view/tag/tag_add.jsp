<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>添加标签</title>
    <%--顶部--%>
    <%@include file="../../static/public/head.jsp"%>
</head>
<body>

<form class="form-inline" action="${pageContext.request.contextPath}/tag/save" method="post">
    <div class="form-group">
        <div class="input-group">
            <div class="input-group-addon">标签名称</div>
            <input type="text" name="name" class="form-control" id="exampleInputAmount" placeholder="请输入标签名称">
        </div>
    </div>
    <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span> 保存</button>
</form>

<%--底部--%>
<%@include file="../../static/public/bottom.jsp"%>
</body>
</html>