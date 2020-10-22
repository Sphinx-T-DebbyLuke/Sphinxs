<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">  
	<div class="row">
		<div class="col-lg-12" style="height: 100px;"></div>
		<div class="col-lg-3"></div>
		<div class="col-lg-6">
			<h2>登录界面</h2>
			<form action="${pageContext.request.contextPath }/User/Login.action" method="post">
				用户名：<input type="text" name="uname" class="form-control">
				密码：<input type="text" name="upasswd" class="form-control"><br>
				<input type="submit" value="登录" class="btn">
			</form>
		</div>
		<div class="col-lg-3"></div>
		<div class="col-lg-12"></div>
	</div>
</div>
</body>
</html>