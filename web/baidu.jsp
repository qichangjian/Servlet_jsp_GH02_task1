<%--
原生ajax实现异步请求
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>原生ajax异步请求</title>
    <style>
        div{
            width: 300px;
            height: 300px;
            margin: 0 auto;
            text-align: center;
        }
    </style>
    <script>
        function send(ele){
            var val = ele.value;
            console.log(val);
            //1.创建xmlhttprequest对象
            var xhr = new XMLHttpRequest();
            //2.打开连接（发送的url,以及请求的方式）
            xhr.open("get","ajax?key=" + val);
            //3.发送请求,只的是请求体get中没有就是null
            xhr.send(null);
            //4.处理响应数据
            //xhr.responseText;获取响应数据
            //监听请求状态时间
            var oDiv = document.getElementById("div2");
            xhr.onreadystatechange = function () {//请求状态改变时间
                //console.log(xhr.readyState); //readyState代表请求的状态 0-4 0xhr刚刚创建 1建立连接 2send 3接受请求 4响应成功
                //xhr.status状态码
                if(xhr.readyState == 4 && xhr.status == 200){
                    //console.log(xhr.responseText);
                    oDiv.innerHTML = xhr.responseText;
                }
            }
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
