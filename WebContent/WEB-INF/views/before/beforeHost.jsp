<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 表单控件大小</title>
	<link rel="stylesheet" href="before/css/bootstrap-theme.min.css" /> 
	<script type="text/javascript" src="before/js/jquery-1.11.2.min.js" ></script>
	<script type="text/javascript" src="before/js/bootstrap.min.js" ></script>
</head>
<body>
<div class="container">
	





<div style="float:left;margin-left:400px;width:800px;height:100%">
<form action="toHostRegister"> 
<h1>房源介绍</h1>
<h3 style="width:650px;">在撰写体验描述时，请思考您的体验如何达到质量标准。请使用您最擅长的语言撰写点评。</h3>
<textarea style="width:600px;height:100px;" placeholder="有什么爱好、兴趣或者喜爱的事情，是您想通过爱彼迎体验与他人分享的"></textarea>

<h1>经验丰富</h1>
<h3 style="width:650px;">您是如何发现这个兴趣爱好的？您对它着迷多久了，进行过哪些深入的探索？</h3>
<textarea style="width:600px;height:100px;" placeholder="有什么爱好、兴趣或者喜爱的事情，是您想通过爱彼迎体验与他人分享的"></textarea>
<h1>您的体验</h1>
<h3 style="width:650px;">您想如何把这个爱好转化成实际的分享体验？</h3>
<textarea style="width:600px;height:100px;" placeholder="您希望多长时间开展一次体验？"></textarea><br/>
<c:if test="${sessionUser!=null }">
<button type="submit">成为房东</button>
</c:if>
<c:if test="${sessionUser==null }">
	 <a href="toLogin" style="float:right;margin-top:10px;">您还未登录请登录后再成为房东吧</a>
</c:if>
</form>

</div>


<div style="float:left;margin-top:100px;width:400px;height:100%">
<h1>房东须知</h1>
<h4>
机会难得
您带参与者见的人、去的地方或参加的活动是他们无法自己找到的。
经验丰富
对于您开展的体验的主题，您充满热情并具备丰富的知识。
见解独到
您的独特视角会让参与者觉得耳目一新。
请再检查一下您提交的体验，并同意以下条款：
	我提交的体验符合爱彼迎质量标准。
	我提交的体验符合当地法律。请阅读更多信息，了解营业执照和可能适用于您开展的体验的其他当地法律。
	我同意爱彼迎附加服务条款。
	机会难得
您带参与者见的人、去的地方或参加的活动是他们无法自己找到的。
经验丰富
对于您开展的体验的主题，您充满热情并具备丰富的知识。
见解独到
您的独特视角会让参与者觉得耳目一新。
请再检查一下您提交的体验，并同意以下条款：
	我提交的体验符合爱彼迎质量标准。
	我提交的体验符合当地法律。请阅读更多信息，了解营业执照和可能适用于您开展的体验的其他当地法律。
	我同意爱彼迎附加服务条款。
</h4>

</div>

</body>

</html>