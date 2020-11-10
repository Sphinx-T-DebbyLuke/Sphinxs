<%--
  Created by IntelliJ IDEA.
  User: 神圣一光-比-布里塔尼亚
  Date: 2020/11/10
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
</head>
<body>
您好！<label style="color: green;font-size: large;">${User.uname}</label><br>
这里是主页面
<a href="${pageContext.request.contextPath}/User/logout.do">点击这里退出</a>
</body>
</html>
