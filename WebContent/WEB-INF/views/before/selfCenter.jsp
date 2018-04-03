<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport"content="width"width=device-width,initial-scale=1.0">
		<title>个人中心</title><link rel="stylesheet" href="before/css/bootstrap.min.css">
		<link rel="stylesheet" href="before/css/inn.css"/>
		<link rel="stylesheet" href="before/css/bootstrap-theme.min.css" />
		<script type="text/javascript" src="before/js/jquery-1.11.2.min.js" ></script>
		<script type="text/javascript" src="before/js/bootstrap.min.js" ></script>
		
	</head>
<body>

   <%@ include file="header.jsp"%>
<div style="float:left;width:12%;height:100%;margin-left:300px;">
<div class="panel panel-deaulft">
	<div class="panel-heading">
	</div>
	<div class="list-group">
		<center><img src="/wp-content/uploads/2014/06/download.png" width="60px" height="60px" class="img-rounded"></center>
	     <center>${sessionUser.userName }<br/><a href="#" style="text-decoration:none;">关注 23</a>&nbsp;&nbsp;&nbsp;<a href="#" style="text-decoration:none;">粉丝 12</a></center>		
        <input type="hidden" name="user.userId" value="${sessionUser.userId }">
        <li class="list-group-item"><a href="myInformation" target="myFrame" style="text-decoration:none;"><span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;完善个人资料</a></li>
        <li class="list-group-item"><a href="myMainPage" target="myFrame" style="text-decoration:none;"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;查看个人资料</a></li>
        <li class="list-group-item"><a href="#" style="text-decoration:none;"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;收藏栏</a></li>
        <li class="list-group-item"><a href="#" style="text-decoration:none;"><span class="glyphicon glyphicon-globe"></span>&nbsp;&nbsp;我的故事</a></li>
        <li class="list-group-item"><a href="#" style="text-decoration:none;"><span class="glyphicon glyphicon-inbox"></span>&nbsp;&nbsp;我的攻略</a></li>
        <li class="list-group-item"><a href="editInn?user.userId=${sessionUser.userId }" target="myFrame" style="text-decoration:none;"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;我的客栈</a></li>
        <li class="list-group-item"><a href="#" style="text-decoration:none;"><span class="glyphicon glyphicon-asterisk"></span>&nbsp;&nbsp;入住过的客栈</a></li>
	</div>
</div>
</div>
<div style="float:right;width:70%;height=100%">
  <iframe src="myInformation" width="80%" height="800px" name="myFrame" scrolling="no" frameborder="0"></iframe>
</div>
</body>
</html>
