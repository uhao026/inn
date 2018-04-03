<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>您好，我是${sessionUser.userName }!</h1>
<h3>注册时间：${sessionUser.userRegisterTime }</h3>
<h5>自我描述：${sessionUser.userDescribe }</h5>

</body>
</html>