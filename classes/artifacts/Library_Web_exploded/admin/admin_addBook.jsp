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
<link href="./css/bootstrap-datetimepicker.min.css" rel="stylesheet"
	media="screen">
<script type="text/javascript" src="./css/bootstrap-datetimepicker.js"></script>
<style>
.imgs {
	width: 900px;
	height: 400px;
	background-position: center;
	background-size: cover;
}
</style>
</head>
<jsp:include page="show_info.jsp"></jsp:include>
<body background="../img/background.jpg">
	<h2 align="center" style="margin-top: 20px;">图书管理系统首页</h2>
	<div class="container">
		<div class="row " style="margin-top: 50px;">
			<div align="center" class="col-md-3">
				<ul class="list-group">
					<li class="list-group-item "><a href="admin_about.jsp"><span
							style="color: black">首页</span></a></li>
					<li class="list-group-item    "><a href="../FenYe"><span
							style="color: black">用户管理</span></a></li>
				<li class="list-group-item "><a href="admin_addStudent.jsp"><span
					style="color: black">添加用户</span></a></li>
					<li class="list-group-item "><a href="../SelectAllBook?type=admin"><span
							style="color: black">图书信息</span></a></li>
					<li class="list-group-item active "><a
						href="admin_addBook.jsp"><span style="color: black">添加图书</span></a></li>
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
					<form action="../AddBook" method="post">
						<table align="center">
							<tr>
								<td align="center"><b>图书名:</b></td>
								<td><input type="text" name="bookname"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass"></td>
							</tr>
							<tr>
								<td align="center"><b>作者:</b></td>
								<td><input type="text" name="author"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass"></td>
							</tr>

							<tr>
								<td align="center"><b>出版社:</b></td>

								<td><select style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass" name="press">

										<option>河南大学出版社</option>
										<option>人民日报出版社</option>
										<option>北京大学出版社</option>
										<option>清华大学出版社</option>
										<option>浙江大学出版社</option>
								</select></td>

							</tr>

							<tr>
								<td align="center"><b>出版日期:</b></td>
								<td><input type="text" name="date"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass form_date"></td>
							</tr>

							<tr>
								<td align="center"><b>类别:</b></td>
								<td><select style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass" name="type">

										<option>计算机科学类</option>
										<option>数学类</option>
										<option>医学类</option>
										<option>化学类</option>
										<option>物理类</option>
								</select></td>
							</tr>

							<tr>
								<td align="center"><b>书架:</b></td>
								<td><input type="text" name="bookshelf"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass"></td>
							</tr>

							<tr>
								<td align="center"><b>添加数量:</b></td>
								<td><input type="text" name="count"
									style="margin-left: 50px; margin-top: 10px;"
									class="form-control inputclass"></td>
							</tr>

						</table>
						<button type="submit" style="margin-left: 20px; margin-top: 30px;"
							class="btn btn-info">确认添加</button>

						<a href="admin_about.jsp" class="btn btn-danger"
							style="margin-left: 80px; margin-top: 30px;"><span>取消添加</span></a>

					</form>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$('.form_date').datetimepicker({
			format : 'yyyy-mm-dd',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0,
		});
	</script>
</body>
</html>