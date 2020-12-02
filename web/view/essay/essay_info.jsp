<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>详情页</title>
    <style>
        .main{
            width: 85%;
            margin: 0 auto;
            border: 1px solid #ccc;
            padding: 15px;
            border-radius: 5px;
        }
        .main h1{
            text-align: center;
        }
        .main .meta{
            background-color: #eee;
            padding: 5px;
            border-radius: 3px;
        }
        .main span{
            margin-right: 20px;
        }
    </style>
</head>
<body>

<div class="main">
    <h1>${essay.title}</h1>
    <div class="meta">
        <span>标签：${essay.tagName}</span>
        <span>发布时间：<fmt:formatDate value="${essay.time}" pattern="yyyy-MM-d HH:mm:ss" /></span>
        <span>预览数：${essay.previewNum}</span>
    </div>
    <div>
        ${essay.content}
    </div>
</div>

</body>
</html>
