<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width" width="device-width,initial-scale=1.0">
		<title>背包客栈</title>
		<link rel="stylesheet" href="before/css/bootstrap.min.css">
		<link rel="stylesheet" href="before/css/bootstrap-theme.min.css" />
		<link rel="stylesheet" href="before/css/index.css"/>
			<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
		<script type="text/javascript" src="before/js/jquery-1.11.2.min.js" ></script>
		<script type="text/javascript" src="before/js/bootstrap.min.js" ></script>
	</head>
	
    <body>
	   <!-- 导航栏 -->
		<div class="container">
		  <div class="row">
			<div class="col-xs-12 col-sm-4">
				<img src="before/images/logo.png" class="img-resonsive" style="height:100px;">
			</div>
			<div class="col-xs-12 col-sm-8" style="padding:2.5% 0;">
				<ul class="nav navbar-nav">
					<li class="dropdown">	
						<a href="toIndex">首页</a>
					</li>
					<li class="dropdown">
						<a href="toInn">特色客栈</a>
					</li>
					<li class="dropdown">
						<a  href="toStory">有点故事</a>
					</li>
					<li class="dropdown">
						<a href="toCulture">大理文化</a>
					</li>
					<li class="dropdown">
						<a href="toTravel">旅游景点</a>
					</li>
					
				     <li> <a href="toHost" >&nbsp;成为房东</a></li>
					
					
					</ul>
				   
				   <c:if test="${sessionUser==null }">
				   <ul class="nav navbar-nav navbar-right">
					  <li><a href="toLogin"><span class="glyphicon glyphicon-user"></span>&nbsp;登录</a></li>
					  <li><a href="toRegister"><span class="glyphicon glyphicon-log-in"></span> &nbsp;注册</a></li>
					</ul>
					</c:if>
					<c:if test="${sessionUser!=null }">
					   <a href="toSelfCenter" style="float:right;margin-top:10px;">${sessionUser.userName}</a>
					</c:if>
					
			</div>
		  </div>
		</div>
		
</body>
</html>