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
		<meta name="viewport"content="width" width=device-width,initial-scale=1.0">
		<title>登录</title><link rel="stylesheet" href="before/css/bootstrap.min.css">
		<link rel="stylesheet" href="before/css/inn.css"/>
		<link rel="stylesheet" href="before/css/bootstrap-theme.min.css" />
		<script type="text/javascript" src="before/js/jquery-1.11.2.min.js" ></script>
		<script type="text/javascript" src="before/js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="before/js/register.js"></script>
		<style type="text/css">
        .code{
            font-style:italic;  color:blue;  font-size:30px;  border:0;  padding:2px 3px; letter-spacing:3px;  font-weight:bolder;
            float:left;  cursor:pointer;  width:150px;  height:60px;  line-height:60px;  text-align:center;  vertical-align:middle;  }
        a {  text-decoration:none;  font-size:12px;  color:#288bc4;  }
        a:hover {  text-decoration:underline;  }
    </style>
   
		
<script type="text/javascript">

var code;
function createCode() {
    code = "";
    var codeLength = 4; //验证码的长度
    var checkCode = document.getElementById("checkCode");
    var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
    for (var i = 0; i < codeLength; i++)
    {
        var charNum = Math.floor(Math.random() * 52);
        code += codeChars[charNum];
    }
    if (checkCode)
    {
        checkCode.className = "code";
        checkCode.innerHTML = code;
    }
}
function validateCode()
{
    var inputCode = document.getElementById("inputCode").value;
    if (inputCode.length <= 0)
    {
        alert("请输入验证码！");
    }
    else if (inputCode.toUpperCase() != code.toUpperCase())
    {
        alert("验证码输入有误！");
        createCode();
    }
    else
    {
        alert("验证码正确！");
    }
}
</script>
	

		
	</head>
<body>
<div style="margin-top:100px;">
<form action="register" method="post" class="form-horizontal" role="form">
  
	<div class="form-group">
		<label for="firstname" class="col-sm-5 control-label">用户名</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" id="user_name" name="userName"
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
		<label for="firstname" class="col-sm-5 control-label">年龄</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" id="user_age" name="userAge"
				   placeholder="请输入年龄">
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-5 control-label">性别</label>
		<div class="col-sm-2">
			<label><input name="userSex" type="radio" value="男" checked="checked"/>男 </label> 
            <label><input name="userSex" type="radio" value="女" />女 </label> 
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-5 control-label">邮箱</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" id="user_email" name="userEmail"
				   placeholder="请输入邮箱">
		</div>
	</div>
	
	
	<div class="form-group">
		<label for="firstname" class="col-sm-5 control-label">电话号码</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" id="user_phone" name="userPhone" 
				   placeholder="请输入电话号码">
		</div>
	</div>
	
	<div class="form-group">
		<label for="firstname" class="col-sm-5 control-label">居住城市</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" id="user_city" name="userCity" 
				   placeholder="请输入居住城市">
		</div>
	</div>
	
	
	<div class="form-group">
		<label for="firstname" class="col-sm-5 control-label">描述</label>
		<div class="col-sm-2">
			<textarea class="form-control" id="user_describe" name="userDescribe" 
				   placeholder="请输入您对自己的描述，不超过126个字"></textarea>
		</div>
	</div>
	
	<div class="form-group">
       <label class="col-sm-5 control-label">验证码</label>
       <div class="col-sm-2">
       <table>
           <tr><td><input style="float:left;" type="text"   id="inputCode" placeholder="请输入验证码"/>  </td> 
          <td> <div class="code" id="checkCode" onclick="createCode()"></div></td>
         </tr>
       </table>
       </div>
       
    </div>
	
	<div class="form-group">
		<div class="col-sm-offset-5 col-sm-10">
			<button type="submit" class="btn btn-default">注册</button>
			<button type="reset" class="btn btn-default">重置</button>
		<!-- 	<button type="text" class="btn btn-default"><a href="toIndex">首页</a></button> -->
		</div>
		
	</div>

	</div>
</form>


</body>
</html>