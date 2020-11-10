<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 神圣一光-比-布里塔尼亚
  Date: 2020/11/3
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>默认页面</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12"></div>
            <div class="col-lg-12">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    <form:form modelAttribute="user" action="${pageContext.request.contextPath}/User/newUser.do" method="post">
                        <table class="table table-striped">

                                <tr><td>姓名:</td><td><form:input path="uname"></form:input></td></tr>
                                <tr><td>年龄:</td><td><form:input path="uage"></form:input></td></tr>
                                <tr><td>性别:</td><td>
                                    <form:select path="usex">

                                    </form:select>
                                </td></tr>
                                <tr><td>电话号码:</td><td><form:input path="phone"></form:input></td></tr>
                                <tr><td>身份证号:</td><td><form:input path="card"></form:input></td></tr>

                        </table>
                        <input type="submit" value="添加">
                        <form:errors path="*"></form:errors>
                    </form:form>
                </div>
                <div class="col-lg-4">


                </div>

            </div>
            <div class="col-lg-12"></div>
        </div>
    </div>


    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.8.3.min.js" rel="stylesheet"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" rel="stylesheet"></script>
</body>
</html>
