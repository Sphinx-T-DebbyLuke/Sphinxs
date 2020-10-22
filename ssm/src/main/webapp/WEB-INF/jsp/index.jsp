<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<html>
<head>
<title>后台管理主页</title>
<style type="text/css">
.main {
	width: 900px;
	height: 600px;
	margin: 0 auto; /*水平居中*/
}

.row1 {
	width: 900px;
	height: 40px;
	font-size: 30px;
	text-align: center;
	background-color: #CC6;
}

.row2 {
	width: 900px;
	height: 460px;
	/*border:1px red solid;*/
}

.row2_left {
	width: 200px;
	height: 610px;
	float: left;
	background: url(resources/images/bg.jpg);
}

.row2_left ul {
	padding-left: 15px;
}

.row2_right {
	width: 700px;
	height: 460px;
	float: left;
	margin-top: 10px;
	background: url(resources/images/bg2.jpg)
		repeat-x;
}
</style>
<link rel="stylesheet" href="resources/css/adminIndex.css"/>
<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<!--使用jQuery的自定义脚本-->
	<script type="text/javascript">
		//$(function(){   //按如下标准写法理解
		$(document).ready(function() { //标准写法
			//jQuery用法：获取应用了点样式.subNav的DOM元素（对象）
			$(".subNav").click(function() {
				var temp = $(this).next(".navContent"); //当前主菜单项的子菜单
				temp.slideToggle(100); //当前主菜单项的子菜单卷起或展开
				temp.siblings(".navContent").slideUp("fast"); //同胞元素向上卷起
			});
		});
	</script>
	<div class="main">
		<div class="row1">后台管理</div>
		<div class="row2">
			<div class="row2_left">
				<div class="subNavBox">
					<!-- 折叠菜单开始 -->
					<div class="subNav">部门管理</div>
					<ul class="navContent" style="display: block">
						<!--不显示列表项，参见样式定义，后同-->
						<li><a href="#" target="kj">部门查询</a></li>
						<li><a href="#" target="kj">部门添加</a></li>
						<li><a href="#" target="kj">部门编辑</a></li>
						<li><a href="#" target="kj">部门删除</a></li>
					</ul>
					<div class="subNav">人员管理</div>
					<ul class="navContent" style="display: block">
						<li><a href="showmessage.html" target="kj">显示首页</a></li>
						<li><a href="${pageContext.request.contextPath}/User/showUser.action" target="kj">人员信息</a></li>
						<li><a href="${pageContext.request.contextPath}/Path/useradd.action" target="kj">人员添加</a></li>
						<li><a href="${pageContext.request.contextPath}/user/listDelUser" target="kj">人员删除</a></li>
						<li><a href="${pageContext.request.contextPath}/user/listeditUser" target="kj">人员编辑</a></li>
					</ul>
					<div class="subNav">图书管理</div>
					<ul class="navContent" style="display: block">
						<!--不显示列表项，参见样式定义，后同-->
						<li><a href="${pageContext.request.contextPath}/book/findbook" target="kj">图书查询</a></li>
						<li><a href="${pageContext.request.contextPath}/book/newbook" target="kj">图书添加</a></li>
						<li><a href="${pageContext.request.contextPath}/book/listeditbook" target="kj">图书编辑</a></li>
						<li><a href="${pageContext.request.contextPath}/book/listdelebook" target="kj">图书删除</a></li>
					</ul>
					
					<div class="subNav">文件管理</div>
					<ul class="navContent" style="display: block">
						<!--不显示列表项，参见样式定义，后同-->
						<li><a href="uploadfile" target="kj">单文件上传</a></li>
						<li><a href="#" target="kj">多文件上传</a></li>
						<li><a href="showDownFiles" target="kj">文件下载</a></li>
					</ul>
					<div class="subNav">系统</div>
					<ul class="navContent" style="display: block">
						<li><a href="#">注册</a></li>
						<li><a href="login.jsp">重新登陆</a></li>
						<li><a href="#"
							onclick="window.open(location,'_self').close();">退出管理系统</a></li>
					</ul>
				</div>
				<!-- 折叠菜单结束 -->
			</div>
			<div class="row2_right">
				<iframe width="700" height="820" src="showmessage.html" name="kj"></iframe>
			</div>
		</div>
	</div>
</body>
</html>
