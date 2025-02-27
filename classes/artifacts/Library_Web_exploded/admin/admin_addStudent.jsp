<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图书管理系统</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<style>
.imgs {
	width: 900px;
	height: 400px;
	background-position: center;
	background-size: cover;
}
</style>
</head>
<body background="../img/background.jpg">
	<h2 align="center" style="margin-top: 20px;">图书管理系统首页</h2>
	<div class="container">
		<div class="row " style="margin-top: 50px;">
			<div align="center" class="col-md-3">
				<ul class="list-group">
					<li class="list-group-item "><a href="admin_about.jsp"><span
							style="color: black">首页</span></a></li>
					<li class="list-group-item    "><a
						href="../FenYe"><span style="color: black">用户管理</span></a></li>
				<li class="list-group-item active"><a href="admin_addStudent.jsp"><span
					style="color: black">添加用户</span></a></li>
					<li class="list-group-item "><a href="../SelectAllBook?type=admin"><span
							style="color: black">图书信息</span></a></li>
					<li class="list-group-item "><a href="admin_addBook.jsp"><span
							style="color: black">添加图书</span></a></li>
					<li class="list-group-item"><a href="admin_changePwd.jsp"><span
							style="color: black">修改密码</span></a></li>
					<li class="list-group-item"><a href="admin_register.jsp"><span
							style="color: black">添加管理员</span></a></li>
					<li class="list-group-item "><a href="admin_exit.jsp"><span
							style="color: black">退出</span></a></li>
				</ul>
			</div>
			<div class="col-md-9">
				<div class="container" align="center">
					<form action="../AddOneStudent" method="post">
						<table align="center">
						<tr>
								<td align="center"></td>
								<td><input type="text" name="type" value="admin"
									style="display: none" class="form-control inputclass"></td>
							</tr>
							<tr>
								<td align="center"><b>学号:</b></td>
								<td><input type="text" name="sno"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass"></td>
							</tr>
							<tr>
								<td align="center"><b>姓名:</b></td>
								<td><input type="text" name="xingming"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass"></td>
							</tr>

							<tr>
								<td align="center"><b>性别:</b></td>

								<td><label class="radio-inline" style="margin-left: 50px;margin-top: 10px"> <input
										type="radio" name="gender" value="男" checked> 男
								</label> <label class="radio-inline"> <input type="radio"
										name="gender" value="女">女
								</label></td>

							</tr>

							<tr>
								<td align="center"><b>电话:</b></td>
								<td><input type="text" name="phone"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass form_date"></td>
							</tr>

							<tr>
								<td align="center"><b>电子邮箱:</b></td>
								<td><input type="text" name="email"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass form_date"></td>
							</tr>

							<tr>
								<td align="center"><b>院系:</b></td>
								<td><input type="text" name="yuan"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass"></td>
							</tr>


						</table>
						<button type="submit" style="margin-left: 20px; margin-top: 30px;"
							class="btn btn-info">确认添加</button>

						<a href="admin_selectAll.jsp" class="btn btn-danger"
							style="margin-left: 80px; margin-top: 30px;"><span>取消添加</span></a>
					</form>
				</div>
			</div>
		</div>
</body>
</html>