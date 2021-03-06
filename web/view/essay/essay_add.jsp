<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章列表页</title>
    <%--顶部--%>
    <%@include file="../../static/public/head.jsp" %>

    <style>
        .radio label{
            margin-right: 10px;
        }
        .form-horizontal{
            padding: 5px 65px 50px 50px;
        }
    </style>
</head>
<body>

<form class="form-horizontal" onsubmit="return getData();" action="${pageContext.request.contextPath}/essay/save" method="post" role="form" enctype="multipart/form-data">
    <div class="form-group">
        <label class="col-sm-1 control-label">标题</label>
        <div class="col-sm-11">
            <input type="text" name="title" class="form-control" placeholder="请输入标题">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label">标签</label>
        <div class="col-sm-11">
            <select class="form-control" name="tagId">
                <option selected>请选择标签</option>
                <c:forEach items="${tagList}" var="tag">
                    <option value="${tag.id}">${tag.name}</option>
                </c:forEach>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label">状态</label>
        <div class="col-sm-11">
            <div class="radio">
                <label><input type="radio" name="status" value="1">轮播图</label>
                <label><input type="radio" name="status" value="2" checked>头条</label>
<%--                <label><input type="radio" name="status" value="3">随便看看</label>--%>
                <label><input type="radio" name="status" value="4">热门阅读</label>
                <label><input type="radio" name="status" value="5">专题专栏</label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label">预览</label>
        <div class="col-sm-11">
            <input type="file" name="uploadFile" onchange="selectImg(this);">
            <img id="uploadImg" width="100" style="display:none;">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label">内容</label>
        <div class="col-sm-11">
            <div id="wangEditor"></div>
            <input type="hidden" id="content" name="content">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-1 control-label"></label>
        <div class="col-sm-11">
            <button type="submit" class="btn btn-default glyphicon glyphicon-ok"> 发布</button>
        </div>
    </div>
</form>

<%--底部--%>
<%@include file="../../static/public/bottom.jsp" %>

<script type="text/javascript">
    const E = window.wangEditor
    const editor = new E('#wangEditor');
    editor.config.uploadImgMaxSize = 3 * 1024 * 1024 // 3M
    editor.config.uploadImgMaxLength = 1 // 一次最多上传 1 个图片
    // editor.config.uploadImgShowBase64 = true

    // 上传服务器
    editor.config.uploadFileName = 'uploadFile'
    editor.config.uploadImgServer = '${pageContext.request.contextPath}/essay/uploadImg'

    editor.create()
</script>

<script>
    function selectImg(obj){
        var file = obj.files[0]
        var reader = new FileReader();  //新建一个FileReader对象
        reader.readAsDataURL(file);     //读取文件url
        reader.onloadend = function (e) {
            let img = window.document.getElementById("uploadImg");
            img.src = e.target.result;
            img.style = "display:block;";
        };
    }

    function getData(){
        var content = editor.txt.html();
        if(content == ""){
            alert("内容不能为空！")
            return false;
        }

        $("#content").val(content);
        return true;
    }
</script>
</body>
</html>
