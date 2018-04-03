<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>故事锦集</title>
    <style>
        * { margin: 0; padding: 0;}
        body { background-color: #e7e7e7;}
        .dowebok { width: 1120px; margin-left: auto; margin-right: auto; font-size: 0;}
        .dowebok ul { margin: -40px 0 0 -40px;}
        .dowebok li { display: inline-block; margin: 40px 0 0 40px; border-radius: 10px; background-color: #fff; vertical-align: top; overflow: hidden;}
        .dowebok a { display: inline-block;}
        .dowebok img { border: 0;}

        .dowebok .pic { position: relative; height: 250px; overflow: hidden;}
        .dowebok .pic img { width: 250px; transform: scale(1.0);}
        .dowebok .pic .pic-bg { display: none; position: absolute; left: 0; right: 0; top: 0; bottom: 0; padding: 10px; font-size: 12px; color: #fff; background-color: #000; opacity: 0.4;}
        .dowebok .pic:hover img { transform: scale(1.1); transition: all 1s;}
        
		
	  
	  
        .dowebok .up { position: absolute; right: 10px; top: 15px; padding-left: 22px; font-size: 14px; color: #999; background: url(images/up.png) 0 no-repeat;}
        .dowebok .comment { position: absolute; right: 60px; top: 15px; padding-left: 22px; font-size: 14px; color: #999; background: url(images/comment.png) 0 no-repeat;}

        .dowebok .info { position: relative; height: 22px; padding: 11px 10px;}
		
        .dowebok .info-avatar { display: inline-block; vertical-align: middle;}
        .dowebok .info img { width: 32px; height: 32px; border-radius: 50%;}
        .dowebok .info-name { display: inline-block; margin-left: 10px; font-size: 14px; color: #666; text-decoration: none; vertical-align: middle;}
        .dowebok .info-name:hover { color: #333;}
    </style>
</head>
<body>
 <%@ include file="header.jsp"%>
    
    <div class="dowebok">
        <ul>
            <li>
                <a class="pic" href="toHotStory">
                    <img src="before/images/index_2.jpeg" alt="" height="250px">		
                </a>

                <div class="info">
					
                    <a class="info-avatar" href="toHotStory">
                        <img src="before/images/index_2.jpeg" alt="">
                    </a>
                    <a class="info-name" href="toHotStory">一场无关</a>
                    <span class="up">&nbsp;1</span>
					<span class="comment">&nbsp;1</span>
                </div>
            </li>
            <li>
                <a class="pic" href="">
                    <img src="before/images/index_12.jpg" alt="" height="250px">
                    <div class="pic-bg"></div>
                </a>
                <div class="info">
                    <a class="info-avatar" href="">
                        <img src="before/images/index_12.jpg" alt="">
                    </a>
                    <a class="info-name" href="">夜幕降临</a>
                    <span class="up">&nbsp;1</span>
					<span class="comment">&nbsp;1</span>
                </div>
            </li>
            <li>
                <a class="pic" href="">
                    <img src="before/images/index_life1.jpg" alt="" height="250px">
                    <div class="pic-bg"></div>
                </a>
                <div class="info">
                    <a class="info-avatar" href="">
                        <img src="before/images/index_life1.jpg" alt="">
                    </a>
                    <a class="info-name" href="">初莲心</a>
                    <span class="up">&nbsp;1</span>
					<span class="comment">&nbsp;1</span>
                </div>
            </li>
            <li>
                <a class="pic" href="">
                    <img src="before/images/index_life2.jpg" alt="" height="250px">
                    <div class="pic-bg"></div>
                </a>
                <div class="info">
                    <a class="info-avatar" href="">
                        <img src="before/images/index_life2.jpg" alt="">
                    </a>
                    <a class="info-name" href="">初莲心</a>
                    <span class="up">&nbsp;1</span>
					<span class="comment">&nbsp;1</span>
                </div>
            </li>
        </ul>
    </div>

</body>
</html>