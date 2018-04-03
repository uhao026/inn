<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
 <%@ include file="header.jsp"%>
<head>
		<meta charset="utf-8">
		<meta name="viewport"content="width" width="device-width,initial-scale=1.0">
		<title>登录</title><link rel="stylesheet" href="before/css/bootstrap.min.css">
		<link rel="stylesheet" href="before/css/inn.css"/>
		<link rel="stylesheet" href="before/css/bootstrap-theme.min.css" />
		<script type="text/javascript" src="before/js/jquery-1.11.2.min.js" ></script>
		<script type="text/javascript" src="before/js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="before/js/register.js"></script>
		
	</head>
<body>
<div style="margin-top:20px;margin-left:400px;margin-right:400px;">
<div class="panel panel-default">
   <div class="panel-heading">
      <h3 class="panel-title">
         必填
      </h3>
   </div>
   <div class="panel-body">
<form action="hostRegister" method="post" class="form-horizontal" role="form">
<input type="hidden" name="user.userId" value="${sessionUser.userId }">
  
	<div class="form-group">
		<label for="firstname" class="col-sm-3 control-label">客栈名</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="name" name="name"
				   placeholder="请输入客栈名">
		</div>
	</div>
	
	
	<div class="form-group">
		<label for="lastname" class="col-sm-3 control-label">客栈地点</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="position" name="position"
				   placeholder="请输入客栈地点">
		</div>
	</div>
	
	 <div class="form-group">
		<label for="lastname" class="col-sm-3 control-label">上传客栈照片</label>
		<div class="col-sm-6">
			<input type="password" class="form-control" id="image" name="image" 
				   placeholder="图片">
		</div>
	</div>
	

	
	
	<div class="form-group">
		<label for="firstname" class="col-sm-3 control-label">描述</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="describe" name="describe" 
				   placeholder="对客栈有何描述，以便客人更好的了解客栈-*-">
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-3 control-label">客栈守则</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="regular" name="regular"
				   placeholder="客栈有何守则需要客人遵守的呢？">
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-3 control-label">周边环境</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="environment" name="environment"
				   placeholder="周边环境咋么样呢？简单介绍一下吧~">
		</div>
	</div>
	

	<div class="form-group">
	   <label for="firstname" class="col-sm-3 control-label">************基础设施***********</label>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">无线网络</label>
		<div class="col-sm-2">
			<label><input name="wifi" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="wifi" type="radio" value="1" />有</label> 
		</div>
		
		<label for="firstname" class="col-sm-2 control-label">厨房</label>
		<div class="col-sm-2">
			<label><input name="kitchen" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="kitchen" type="radio" value="1" />有</label> 
		</div>
		
		
		<label for="firstname" class="col-sm-2 control-label">洗发水</label>
		<div class="col-sm-2">
			<label><input name="shampoo" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="shampoo" type="radio" value="1" />有</label> 
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">吹风机</label>
		<div class="col-sm-2">
			<label><input name="blower" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="blower" type="radio" value="1" />有</label> 
		</div>
		
		<label for="firstname" class="col-sm-2 control-label">空调</label>
		<div class="col-sm-2">
			<label><input name="airConditioner" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="airConditioner" type="radio" value="1" />有</label> 
		</div>
		
		
		<label for="firstname" class="col-sm-2 control-label">暖气</label>
		<div class="col-sm-2">
			<label><input name="heating" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="heating" type="radio" value="1" />有</label> 
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">电视</label>
		<div class="col-sm-2">
			<label><input name="tv" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="tv" type="radio" value="1" />有</label> 
		</div>
		
		<label for="firstname" class="col-sm-2 control-label">洗衣机</label>
		<div class="col-sm-2">
			<label><input name="washing" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="washing" type="radio" value="1" />有</label> 
		</div>
		
		
		<label for="firstname" class="col-sm-2 control-label">书桌/工作区域</label>
		<div class="col-sm-2">
			<label><input name="workArea" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="workArea" type="radio" value="1" />有</label> 
		</div>
	</div>
	
		<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">浴室</label>
		<div class="col-sm-2">
			<label><input name="bathroom" type="radio" value="0" checked="checked"/>无 </label> 
            <label><input name="bathroom" type="radio" value="1" />有</label> 
		</div>
		</div>
	
	<div class="form-group">
	   <label for="firstname" class="col-sm-3 control-label">************基础设施***********</label>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">单人间</label>
		<div class="col-sm-2">
			 <div class="input-group">
	            <input type="text" class="form-control" name="singleRoom">
	            <span class="input-group-addon">间</span>
            
	            <input type="text" class="form-control" name="singlePrice">
	            <span class="input-group-addon">元</span>
             </div>
		</div>
		
		<label for="firstname" class="col-sm-1 control-label">双人间</label>
		<div class="col-sm-2">
			 <div class="input-group">
	            <input type="text" class="form-control" name="doubleRoom">
	            <span class="input-group-addon">间</span>
	            <input type="text" class="form-control" name="singlePrice">
	            <span class="input-group-addon">元</span>
             </div>
		</div>
		
		
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">四人间</label>
		<div class="col-sm-2">
			 <div class="input-group">
	            <input type="text" class="form-control" name="ultraRoom">
	            <span class="input-group-addon">间</span>
	            <input type="text" class="form-control" name="singlePrice">
	            <span class="input-group-addon">元</span>
             </div>
		</div>
		
		<label for="firstname" class="col-sm-1 control-label">六人间</label>
		<div class="col-sm-2">
			 <div class="input-group">
	            <input type="text" class="form-control" name="sixRoom">
	            <span class="input-group-addon">间</span>
	            <input type="text" class="form-control" name="singlePrice">
	            <span class="input-group-addon">元</span>
             </div>
		</div>
		
		<label for="firstname" class="col-sm-1 control-label">八人间</label>
		<div class="col-sm-2">
			 <div class="input-group">
	            <input type="text" class="form-control" name="eightRoom">
	            <span class="input-group-addon">间</span>
	            <input type="text" class="form-control" name="singlePrice">
	            <span class="input-group-addon">元</span>
             </div>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-5 col-sm-10">
			<button type="submit" class="btn btn-default">申请成为房东</button>  
			<button type="reset" class="btn btn-default">重置</button>
		<!-- 	<button type="text" class="btn btn-default"><a href="toIndex">首页</a></button> -->
		</div>
		
	</div>
</form>
	</div>

</div>
</div>
</body>
</html>