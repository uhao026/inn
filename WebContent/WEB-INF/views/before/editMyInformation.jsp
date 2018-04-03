<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>

        <link rel="stylesheet" href="before/css/bootstrap.min.css">
		<link rel="stylesheet" href="before/css/inn.css"/>
		<link rel="stylesheet" href="before/css/bootstrap-theme.min.css" />
		<script type="text/javascript" src="before/js/jquery-1.11.2.min.js" ></script>
		<script type="text/javascript" src="before/js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="before/js/register.js"></script>
</head>
<body>
<div class="panel panel-default">
   <div class="panel-heading">
      <h3 class="panel-title">
         必填
      </h3>
   </div>
   <div class="panel-body">
 
<form action="modify" method="post" class="form-horizontal">
  
	<div class="form-group">
	    <input type="hidden" name="userId" value="${sessionUser.userId }">
		<label for="firstname" class="col-sm-2 control-label">用户名</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="user_name" name="userName" value="${sessionUser.userName }">
			
		</div>
	</div>
	
	
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">密码</label>
		<div class="col-sm-9">
			<input type="password" class="form-control" id="user_password" name="userPassword" value="${sessionUser.userPassword}">
		</div>
	</div>
	
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">年龄</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="user_age" name="userAge" value="${sessionUser.userAge}">
			<p>您来到这个世界的神奇日子。此数据仅作分析用途，我们不会透露给其它用户。</p>
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">性别</label>
		<div class="col-sm-9">
			<label><input name="userSex" type="radio" value="${sessionUser.userSex}" checked="checked"/>男 </label> 
            <label><input name="userSex" type="radio" value="${sessionUser.userSex}" />女 </label> <br/>
            <p>此数据仅用于分析，我们不会透露给其它用户。</p>
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">邮箱</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="user_email" name="userEmail" value="${sessionUser.userEmail}">
			<p>我们不会向网站其他用户透露您的个人邮箱地址。</p>
		</div>
	</div>
	
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">电话号码</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="user_phone" name="userPhone" value="${sessionUser.userPhone}">
			<p>只有在您和另一名背包客用户确认预订时，此资料才会被分享。这是我们帮助大家联系彼此的方式。</p>
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">居住城市</label>
		<div class="col-sm-9">
			<input type="text" class="form-control" id="user_city" name="userCity" value="${sessionUser.userCity}">
			<p>让其他用户知道您是来自何方，你们可以进行更加深入的了解与交流。</p>
		</div>
	</div>
	
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">自我介绍</label>
		<div class="col-sm-9">
			<textarea class="form-control" id="user_describe" name="userDescribe" >${sessionUser.userDescribe}</textarea>
			<p>背包客网站是建立在相互关系上的，请帮助其他人了解您。</p>
            <p>告诉他们您喜欢什么，您离开了哪几样东西就不能活？分享您最喜爱的旅游目的地丶书籍丶电影丶电视节目丶音乐以及食物。</p>
            <p>告诉他们您会是个什么样的房东或房客，您旅游的风格是怎样的？您作为爱彼迎房东的风格又是怎样呢？</p>
		</div>
	</div>
	
	
	<div class="form-group">
		<div class="col-sm-offset-5 col-sm-10">
			<button type="submit" class="btn btn-default">保存</button>
		</div>
	</div>
</form>
 
 
 
   </div>
</div>


</body>
</html>