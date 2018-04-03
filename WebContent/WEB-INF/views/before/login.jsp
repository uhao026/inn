<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport"content="width"width=device-width,initial-scale=1.0">
		<title>登录</title><link rel="stylesheet" href="before/css/bootstrap.min.css">
		<link rel="stylesheet" href="before/css/inn.css"/>
		<link rel="stylesheet" href="before/css/bootstrap-theme.min.css" />
		<script type="text/javascript" src="before/js/jquery-1.11.2.min.js" ></script>
		<script type="text/javascript" src="before/js/bootstrap.min.js" ></script>
		
	</head>
<body>
 <%@ include file="header.jsp"%>
<div style="margin-top:200px;">
<form action="login" method="post" class="form-horizontal" role="form">
	<div class="form-group">
		<label for="firstname" class="col-sm-5 control-label">用户名</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" id="user_name"  name="userName"
				   placeholder="请输入用户名">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-5 control-label">密码</label>
		<div class="col-sm-2">
			<input type="password" class="form-control" id="user_password" name="userPassword" 
				   placeholder="请输入密码">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-5 col-sm-10">
			<div class="checkbox">
				<label>
					<input type="checkbox"> 请记住我
				</label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-5 col-sm-10">
			<button type="submit" class="btn btn-default">登录</button>
			<button type="reset" class="btn btn-default">重置</button>
			<!-- <button type="text" class="btn btn-default"><a href="toIndex">首页</a></button> -->
		</div>
		
	</div>
	</div>
</form>

</body>
</html>