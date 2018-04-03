<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width" width="device-width,initial-scale=1.0">
		<title>背包客栈</title>
		<link rel="stylesheet" href="before/css/bootstrap.min.css">
		<link rel="stylesheet" href="before/css/bootstrap-theme.min.css" />
		<link rel="stylesheet" href="before/css/inn.css"/>
		<script type="text/javascript" src="before/js/jquery-1.11.2.min.js" ></script>
		<script type="text/javascript" src="before/js/bootstrap.min.js" ></script>
	</head>
		
	<body>
	   <%@ include file="header.jsp"%>
	
    <h1>特色客栈 </h1>
	 <div>
       <div class="simpleSearchDiv pull-right">
	    <input type="text" name="keyword" placeholder="地点">
		<button type="button" class="searchButton">搜索</button>
		<div class="searchBelow">
		    <span>
			    <a href="#nowhere">三月街</a>
				<span>|</span>
			</span>
			<span>
			    <a href="#nowhere">洱海</a>
				<span>|</span>
			</span>
			<span>
			    <a href="#nowhere">苍山</a>
				<span>|</span>
			</span>
			<span>
			    <a href="#nowhere">三塔寺</a>
			</span>
		</div>
		<div style="clear:both"></div>
      </div>
	</div>

	<div>
		<ul class="nav nav-tabs" style="margin-left:80px;margin-top:50px;margin-right:80px;">
			<li class="active"><a href="#zsxx" data-toggle="tab">洱海</a></li>
			<li ><a href="#tw1"data-toggle="tab">双廊</a></li>
			<li><a href="#tw2" data-toggle="tab">白镇</a></li>
			<li><a href="#tw3" data-toggle="tab">三月街</a></li>
			<li><a href="#tw4" data-toggle="tab">人民路</a></li>
			<li><a href="#tw5" data-toggle="tab">三塔寺</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<!--洱海-->
	 <div class="tab-pane fade in active"id="zsxx">
	  <div style="margin-left:100px;margin-top:60px;margin-right:80px;">
		<div class="col-xs-12 col-sm-3">
		   <a href="toInnDetail" style="text-decoration:none;" href="#"><img id="b" src="before/images/index_1.jpeg" class="img-thumbnail"/>
		   <h3>￥500 <small>洱海-海景房</small></h3>
		   <p>*****92条评价</p></a>
		</div>
	  </div>
	 </div>
	 
	 <!--双廊-->
	 <div class="tab-pane fade"id="tw1">
	  <div style="margin-left:100px;margin-top:60px;margin-right:80px;">
		<div class="col-xs-12 col-sm-3">
		   <a style="text-decoration:none;" href="#"><img id="b" src="before/images/index_2.jpeg" class="img-thumbnail"/>
		   <h3>￥500 <small>洱海-海景房</small></h3>
		   <p>*****92条评价</p></a>
		</div>
	  </div>
	 </div>
	 
	 <!--白镇-->
	 <div class="tab-pane fade"id="tw2">
	  <div style="margin-left:100px;margin-top:60px;margin-right:80px;">
		<div class="col-xs-12 col-sm-3">
		   <a style="text-decoration:none;" href="#"><img id="b" src="before/images/index_3.jpeg" class="img-thumbnail"/>
		   <h3>￥500 <small>洱海-海景房</small></h3>
		   <p>*****92条评价</p></a>
		</div>
	  </div>
	 </div>
	 
	 <!--三月街-->
	 <div class="tab-pane fade"id="tw3">
	  <div style="margin-left:100px;margin-top:60px;margin-right:80px;">
		<div class="col-xs-12 col-sm-3">
		   <a style="text-decoration:none;" href="#"><img id="b" src="before/images/index_4.jpeg" class="img-thumbnail"/>
		   <h3>￥500 <small>洱海-海景房</small></h3>
		   <p>*****92条评价</p></a>
		</div>
	  </div>
	 </div>
	 
	 <!--人民路-->
	 <div class="tab-pane fade"id="tw4">
	  <div style="margin-left:100px;margin-top:60px;margin-right:80px;">
		<div class="col-xs-12 col-sm-3">
		   <a style="text-decoration:none;" href="#"><img id="b" src="before/images/index_5.jpeg" class="img-thumbnail"/>
		   <h3>￥500 <small>洱海-海景房</small></h3>
		   <p>*****92条评价</p></a>
		</div>
	  </div>
	 </div>
	 
	 <!--三塔寺-->
	 <div class="tab-pane fade"id="tw5">
	  <div style="margin-left:100px;margin-top:60px;margin-right:80px;">
		<div class="col-xs-12 col-sm-3">
		   <a style="text-decoration:none;" href="#"><img id="b" src="before/images/index_12.jpg" class="img-thumbnail"/>
		   <h3>￥500 <small>洱海-海景房</small></h3>
		   <p>*****92条评价</p></a>
		</div>
	  </div>
	 </div>
	 
	</div>
	
	
	<div class="col-xs-12 col-sm-12" style="text-align:center;">
		<ul class="pagination">
			<li><a href="#">&laquo;</a></li>
			<li class="active"><a href="#">1</a></li>
			<li class="disabled"><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>
    </div>
</body>
</html>