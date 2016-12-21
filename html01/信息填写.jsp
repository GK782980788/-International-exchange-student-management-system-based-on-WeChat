<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>信息填写</title>

	<!-- For-Mobile-Apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Simple Contact Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //For-Mobile-Apps -->

	<!-- Style --> <link rel="stylesheet" href="${ctx}/css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${ctx}/css/pgwmenu.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${ctx}/css/dilan.center.css" type="text/css" media="all" />


	<!-- Web-Fonts -->
		<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900" 	type="text/css"  media="all">
		<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700,800" 		type="text/css"  media="all">
	<!-- //Web-Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h4>信息填写</h4>

	
        <div>
        	<img src="${ctx}/images/1(bm).png">
        </div>
        <div id="mynav" style="position:relative;top:auto;z-index:999;width:100%;">
            <ul class="pgwMenu light">
	            <li target="_blank"><a href="#">个人信息</a></li>
	            <li target="_blank"><a href="#">奖学金</a></li>
	            <li target="_blank"><a href="#">助学金</a></li>
	            <li target="_blank"><a href="#">学籍表</a></li>
            </ul>
        </div>
        <div class="cc"></div>
        <div class="container">

		<div class="contact">

			<form action="#" method="post">
				<div>
				
				<input type="text" Name="姓名" placeholder="姓名" required="" style="#E6E6FA">
				</div>
				<div>
				
				<input type="email" Name="邮箱" placeholder="邮箱" required="">
				</div>
				<div>
				
				<input type="text" Name="联系方式" placeholder="联系方式" required="">
				</div>
				<div>
				
				<input type="text" Name="单位" placeholder="单位" required="">
				</div>
				<div class="send-button">

					<input type="submit" value="提交">
				</div>
			</form>
		</div>

       </div>

	
	 <!--底栏菜单-->
<div class="nav4">

  
    <div id="nav4_ul" class="nav_4">
      <ul class="box">
        
        <li>
        
        <a href="../index/首页.html"><img src="${ctx}/images/02.png"><span>新闻首页</span> </a>
        </li>
        
        <li>
        <a href=""><img src="${ctx}/images/07.png">信息填写</a>
          
        </li>
        <li>
        <a href=""><img src="${ctx}/images/04.png"><span>疑难解答</span></a>
          
        </li>
          <li>
          <a href="#"><img src="${ctx}/images/03.png"><span>个人中心</span></a>
          
        </li>
      </ul>
    </div>
  
  
  <div id="nav4_masklayer" class="masklayer_div on">&nbsp;</div>

</div>

</body>
<!-- //Body -->

</html>