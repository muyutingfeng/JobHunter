<!DOCTYPE html>
<html>
<header>
    <meta charset="utf-8">
    <!-- 引入 ECharts 文件 -->
    <script src="/js/echarts.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
    <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>


</header>

<body>


<div id="lbrateimgae3" style="width: 1000px;height:300px;"></div>



<script type="text/javascript">


    var myChart3 = echarts.init(document.getElementById('lbrateimgae3'));




    var option3 = {
        title: {
            text: '负载数(loadSample)变化对概率计算的影响'
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
            data:['rate_f_s','rate_c_s']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: [
            <#list imageHelperList2 as image>
                '${image.distance}',
            </#list>
            ]
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                name:'rate_f_s',
                type:'line',
                stack: '比值',
                data:[
                <#list imageHelperList2 as image>
                ${image.rate_f_s},
                </#list>

                ]
            },
            {
                name:'rate_c_s',
                type:'line',
                stack: '比值',
                data:[
                <#list imageHelperList2 as image>
                ${image.rate_c_s},
                </#list>
                ]
            },

        ]
    };

    myChart3.setOption(option3);




</script>





</body>

</html>