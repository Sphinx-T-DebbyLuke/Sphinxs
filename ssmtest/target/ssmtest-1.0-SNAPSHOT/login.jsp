<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.xj.POJO.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">

</head>
<body>
<div class="container-fluid">  
	<div class="row">
		<div class="col-lg-12" style="height: 100px;"></div>
		<div class="col-lg-3"></div>
		<div class="col-lg-6">
			<h2>登录界面</h2>
			<form:form modelAttribute="user" action="${pageContext.request.contextPath }/User/Login.do" method="post">
				用户名：<form:input path="uname" cssClass="form-control"></form:input>
				<span><form:errors path="uname"></form:errors></span><br>
				密码：<form:input path="upasswd" cssClass="form-control"></form:input>
				<span><form:errors path="upasswd"></form:errors></span><br>
				<br><input type="submit" value="登录" class="btn">
			</form:form>
			<label style="color: red">${errMsg}</label>
		</div>
		<div class="col-lg-3"></div>
		<div class="col-lg-12"></div>
	</div>
</div>
</body>
</html>