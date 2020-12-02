<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--顶部--%>
    <%@include file="../../static/public/head.jsp" %>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
</head>
<body>


<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 100%;height:500px;"></div>
<script type="text/javascript">

    // 请求后台数据
    $.get(
        "${pageContext.request.contextPath}/echarts/tag",
        function(res){
            var key = [];
            var val = [];

            for(var i=0;i<res.length;i++){
                key.push(res[i].name);
                val.push(res[i].value);
            }

            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));

            // 指定图表的配置项和数据
            var option = {
                title: {
                    text: '标签下文章数量统计图'
                },
                tooltip: {},
                legend: {
                    data:['文章统计']
                },
                xAxis: {
                    data: key
                },
                yAxis: {},
                series: [{
                    name: '文章数量',
                    type: 'bar',
                    data: val
                }]
            };
            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);
        },
        "json"
    );


</script>

</body>
</html>
