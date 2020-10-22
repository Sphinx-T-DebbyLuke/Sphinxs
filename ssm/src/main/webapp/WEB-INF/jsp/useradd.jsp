<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员添加</title>
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	<form method="POST" action="../User/newUser.action">
		<table align="center" class="table table-bordered">
			<br />
			<br />
			<br />
			<tr>
				<td><label>姓名：</label></td>
				<td><input type="text" class="form-control" name="uname"></td>
			</tr>
			<tr>
				<td><label>年龄：</label></td>
				<td><input type="text" class="form-control" name="uage"></td>
			</tr>
			<tr>
				<td><label>性别：</label></td>
				<td>
					<select name="usex" class="form-control">
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label>电话号码：</label></td>
				<td><input type="text" class="form-control" name="uphone"></td>
			</tr>
			<tr>
				<td><label>身份证号：</label></td>
				<td><input type="text" class="form-control" name="card"></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2" align="center"><input type="submit" class="btn btn-success"
					value="提交信息" /></td>
			</tr>
		</table>
	</form>

	<!-- 	<h3 align="center">查询所有用户</h3>
	<p align="center">
		<a href="user/user!get">查询</a>
	</p> -->
</body>

</html>
