<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        main {
            width: 50%;
            margin: 0 auto;
        }

        main .top {
            text-align: center;
        }
        main .top h2{
            color: #666;
        }

        main .bottom {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
        }

        main .bottom div {
            padding-top: 5px;
            text-align: center;
            font-size: 20px;
            width: 45%;
            height: 100px;
            background-color: #2aabd2;
            border-radius: 10px;
        }
        main .bottom div a{
            color: white;
            text-decoration: none;
        }
        main .bottom div:hover{
            background-color: #f92672;
        }
    </style>
</head>
<body>
<main>
    <div class="top">
        <h2>日常管理</h2>
        <hr/>
    </div>
    <div class="bottom">
        <div>
            <a href="${pageContext.request.contextPath}/tag/list">
                标签管理<br/>
                <img src="${pageContext.request.contextPath}/static/img/tag.png" width="70">
            </a>
        </div>
        <div>
            <a href="${pageContext.request.contextPath}/essay/list">
                博客管理<br/>
                <img src="${pageContext.request.contextPath}/static/img/boke.png" width="60">
            </a>
        </div>
    </div>
</main>
</body>
</html>