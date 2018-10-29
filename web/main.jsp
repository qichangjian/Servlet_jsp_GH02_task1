<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/6
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>main</title>
</head>
<body>
欢迎：${LoginUsername}登录&nbsp;| &nbsp; <a href="loginout.jsp">注销</a>
<table>
    <tr>
        <th>用户名</th>
        <th>密码</th>
    </tr>
    <c:forEach items="${uLists}" var="list">
        <tr>
            <td>${list.username }</td>
            <td>${list.pwd}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
