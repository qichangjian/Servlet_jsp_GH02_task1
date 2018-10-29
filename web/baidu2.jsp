<%--
Jquery ajax实现异步请求
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jquery ajax异步请求</title>
    <style>
        div{
            width: 300px;
            height: 300px;
            margin: 0 auto;
            text-align: center;
        }
    </style>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script>
        function send(ele){
            var val = ele.value;
            console.log(val);
            //get方式提交 ，具有回调函数
            /*$.get("ajax?key=" + val,function (data) {
                $("#div2").html(data);
            });*/
            //post方式提交
            $.post("ajax",{"key":val},function(data){
                $("#div2").html(data);
            });
        }
    </script>

</head>
<body>
    <div id="div1">
        <img src="https://www.baidu.com/img/bd_logo1.png?where=super" alt="图片丢失" width="270px" height="129px">
        <input type="text" onkeyup="send(this)"/><input type="button" value="百度一下"/>
        <div id="div2">

        </div>
    </div>
</body>
</html>
