<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SSM测试</title>
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<table class="table table-bordered">
		<tr><th>编号</th><th>名字</th><th>年龄</th><th>身份证号</th><th>性别</th><th>电话号码</th></tr>
		<c:forEach items="${allUser }" var="p">
			<tr><td>${p.uid }</td><td>${p.uname }</td><td>${p.uage }</td><td>${p.card }</td>
			<td>${p.usex }</td><td>${p.phone }</td></tr>
		</c:forEach>
	</table>
</body>
</html>