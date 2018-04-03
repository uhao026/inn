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
						<a href="index.jsp">首页</a>
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
		
		
		<!--搜索栏-->
		<div>
		   <input class="search" type="text" placeholder="地点"/> 
		   <input class="search" type="date" placeholder="入住时间"/>
		   <input class="search" type="date" placeholder="退房时间"/>
		   <button class="btn btn-primary">搜索</button>
		</div>
		
		
		<!--图片轮播-->            
		<div class="col-xs-12 col-sm-12" style="margin-left:auto;width:100%;height:452px">
			<div id="carousel-news" class="carousel slide" data-ride="carousel">	
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img id="pic" alt=" "src="before/images/index_17.jpg">
						<div class="carousel-caption"contenteditable="true"></div>
					</div>
					<div class="item">
						<img id="pic" alt=" "src="before/images/index_16.jpg">
						<div class="carousel-caption"contenteditable="true"></div>
					</div>
					<div class="item">
						<img id="pic" alt=" "src="before/images/index_15.jpg">
						<div class="carousel-caption"contenteditable="true"></div>
					</div>
					<div class="item">
						<img id="pic" alt=" "src="before/images/index_14.jpg">
						<div class="carousel-caption"contenteditable="true"></div>
					</div>
					<div class="item">
						<img id="pic" alt=" "src="before/images/index_13.jpeg">
						<div class="carousel-caption"contenteditable="true"></div>
					</div>
					<div class="item">
						<img id="pic" alt=" "src="before/images/index_12.jpg">
						<div class="carousel-caption"contenteditable="true"></div>
					</div>
					<div class="item">
						<img id="pic" alt=" "src="before/images/index_11.jpg">
						<div class="carousel-caption"contenteditable="true"></div>
					</div>
				</div>
				<ol class="carousel-indicators">
						<li data-target="#carousel-news"data-slide-to="0"class="active"></li>
						<li data-target="#carousel-news"data-slide-to="1"></li>
						<li data-target="#carousel-news"data-slide-to="2"></li>
						<li data-target="#carousel-news"data-slide-to="3"></li>
						<li data-target="#carousel-news"data-slide-to="4"></li>
						<li data-target="#carousel-news"data-slide-to="5"></li>
						<li data-target="#carousel-news"data-slide-to="6"></li>
				</ol>
					
				<a class="left carousel-control" href="#carousel-news"role="button"data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control"href="#carousel-news"role="button"data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="sr-only"></span>
				</a>	
			</div>
		</div>
		
		 <div class="col-xs-12 col-sm-12" style="margin-left:auto;width:100%;height:100px">
		   <p  class="setFont">一个风花雪月的国度,等风，也在等你。</p>
		 </div>
		
		<!--面板-->
	    <div class="col-xs-6 col-sm-6" style="margin-left:auto;width:50%;height:452px">
		 <div id="dist">
			<div class="panel-heading">
				<h3 class="panel-title"><img src="before/images/index_knowledge.png" style="width:100px;height:70px;"/>诶，我有个正经事想和你谈谈……</h3>
			</div>
			<div class="panel-body">
			 <blockquote>
				<p><ul class="list-group">
	                   <li class="list-group-item"><a href="#"  class="tooltip-test" data-toggle="tooltip" title="2017.11.7 大理古城摆渡人'以书换宿'活动开始啦">2017.11.7 大理古城摆渡人“以书换宿"活动开始啦~</a></li>
	                   <li class="list-group-item"><a href="#">2017.10.6 大理古城摆渡人“以书换宿活动开始啦”</a></li>
					   <li class="list-group-item"><a href="#">2017.9.27 大理古城摆渡人“以书换宿活动开始啦”</a></li>
					   <li class="list-group-item"><a href="#">2017.11.7 大理古城摆渡人“以书换宿活动开始啦”</a></li>
					   <li class="list-group-item"><a href="#">2017.7.7 大理古城摆渡人“以书换宿活动开始啦”</a></li>
	                   <li class="list-group-item"><a href="#">2017.6.17 大理古城摆渡人“以书换宿活动开始啦”</a></li>
                    </ul>
				</p>
			 </blockquote>
			</div>
		 </div>
		</div>
		
		<!--面板-->
	    <div class="col-xs-6 col-sm-6" style="margin-left:auto;width:50%;height:452px">
		 <div id="dist">
			<div class="panel-heading">
				<h3 class="panel-title"><img src="before/images/index_active.png" style="width:100px;height:70px;"/>如果我说我在等你，你会来吗？</h3>
			</div>
			<div class="panel-body">
			 <blockquote>
				<p>
					
					<ul class="list-group">
	                   <li class="list-group-item"><a href="#"  class="tooltip-test" data-toggle="tooltip" title="2017.11.7 大理古城摆渡人'以书换宿'活动开始啦">2017.11.7 大理古城摆渡人“以书换宿"活动开始啦~</a></li>
	                   <li class="list-group-item"><a href="#">2017.10.6 大理古城摆渡人“以书换宿活动开始啦”</a></li>
					   <li class="list-group-item"><a href="#">2017.9.27 大理古城摆渡人“以书换宿活动开始啦”</a></li>
					   <li class="list-group-item"><span class="badge">新</span><a href="#">2017.11.7 大理古城摆渡人“以书换宿活动开始啦”</a></li>
					   <li class="list-group-item"><a href="#">2017.7.7 大理古城摆渡人“以书换宿活动开始啦”</a></li>
	                   <li class="list-group-item"><span class="badge">新</span><a href="#">2017.6.17 大理古城摆渡人“以书换宿活动开始啦”</a></li>
                    </ul>
				</p>
			 </blockquote>
			</div>
		 </div>
		</div>
		
		<div class="col-xs-12 col-sm-12" style="margin-left:auto;width:100%;">
		   <p  class="setFont">柴米油盐诗酒茶，三五知己夜游谈。</p>
		   <div class="setPicDis">
		   <div class="col-xs-3 col-sm-3" style="margin-left:auto;width:25%;height:200px">
		      <img src="before/images/index_life1.jpg" style="width:300px;height:200px;" class="img-thumbnail"/>
		   </div>
		   <div class="col-xs-3 col-sm-3" style="margin-left:auto;width:25%;height:200px">
		      <img src="before/images/index_life3.jpg" style="width:300px;height:200px;" class="img-thumbnail"/>
		   </div>
		   <div class="col-xs-3 col-sm-3" style="margin-left:auto;width:25%;height:200px">
		      <img src="before/images/index_life4.png" style="width:300px;height:200px;" class="img-thumbnail"/>
		   </div>
		   <div class="col-xs-3 col-sm-3" style="margin-left:auto;width:25%;height:200px">
		      <img src="before/images/index_life5.jpg" style="width:300px;height:200px;" class="img-thumbnail"/>
		   </div>
		   </div>
		  </div>
		  
		  
		  <div class="col-xs-12 col-sm-12" style="margin-left:auto;width:100%;height:200px">
		   <p  class="setFont">春天的花开秋天的风以及冬天的落阳。</p>
		   <div class="setPicDis1">
		   <div class="col-xs-4 col-sm-4" style="margin-left:100px;width:25%;height:200px">
		      <img src="before/images/index_pic1.png" style="width:100px;height:80px;"/>
			  <h4>24小时中文服务</h4>
			  <span>我们为每位房客提供入住安全保险，24小时全年无休中文客服：+86 10 8783-3463</span>
		   </div>
		   <div class="col-xs-4 col-sm-4" style="margin-left:50px;width:25%;height:200px">
		      <img src="before/images/index_pic2.png" style="width:100px;height:80px;"/>
			  <h4>比酒店更高性价比</h4>
			  <span>厨房洗衣设施一应俱全。花同样的钱，享有更大空间。出门在外，却有在家的舒适便捷</span>
		   </div>
		   <div class="col-xs-4 col-sm-4" style="margin-left:50px;width:25%;height:200px">
		      <img src="before/images/index_pic3.png" style="width:100px;height:80px;"/>
			  <h4>房东让你宾至如归</h4>
			  <span>无论是提供私家攻略还是把家布置得如同城市博物馆，我们的房东都会帮助你无缝接入当地文化。</span>
		   </div>
		   </div>
		  </div>
		
		
		 
		
	</body>
	<footer>
	 <div class="col-xs-12 col-sm-12" style="margin-left:auto;margin-top:200px;width:100%;">
		   
		   <div class="setPicDis1">
		   <div class="col-xs-4 col-sm-4" style="margin-left:150px;width:25%;height:200px">
		   <p>想加入我们吗？一直在，一直等你！</p>
			  <label>发送您的邮箱到我们的官方邮箱就有机会获得超值大礼包哈哈哈不存在的</label>
			  <form class="bs-example bs-example-form" role="form">
		        <div class="input-group">
					
					<input type="text" class="form-control" placeholder="您的邮箱">
					<span class="input-group-addon">@163.com</span>
					<input type="button" class="form-control" value="发送">
				</div>
			</form>
		</div>
			  
		   </div>
		   <div class="col-xs-3 col-sm-3" style="margin-left:100px;width:20%;height:200px">
		       <h4>合作伙伴：</h4>
			<ul>
			  <li>天宇</li>
			  <li>东方之星</li>
			  <li>天空之城</li>
			  <li>天宇</li>
			  <li>东方之星</li>
			  <li>天空之城</li>
			</ul>
		   </div>
		   <div class="col-xs-3 col-sm-3" style="margin-left:auto;width:20%;height:200px">
		       <h4>友情链接：</h4>
			<ul>
			  <li>天宇</li>
			  <li>东方之星</li>
			  <li>天空之城</li>
			  <li>天宇</li>
			  <li>东方之星</li>
			  <li>天空之城</li>
			</ul>
		  </div>
		   <div class="actGotop">
		   <div class="col-xs-2 col-sm-2" style="float:right;width:10%;">
		    
			
		   <a href="javascript:;" title="返回顶部"><img src="before/images/gotopd.gif"/></a></div></div>
	<script type="text/javascript">
$(function(){	
	$(window).scroll(function() {		
		if($(window).scrollTop() >= 100){ //向下滚动像素大于这个值时，即出现小火箭~
			$('.actGotop').fadeIn(300); //火箭淡入的时间，越小出现的越快~
		}else{    
			$('.actGotop').fadeOut(300); //火箭淡出的时间，越小消失的越快~
		}  
	});
	$('.actGotop').click(function(){$('html,body').animate({scrollTop: '0px'}, 800);}); //火箭动画停留时间，越小消失的越快~
});
</script>
		   
		   
		   </div>
	</footer>
	
</html>