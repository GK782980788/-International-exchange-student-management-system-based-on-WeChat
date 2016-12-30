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
	<!-- //Web-Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h5 align="center"  style="background-color:white;padding-top:4px;font-size:0.8em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;;">信息填写</h5>

	
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
			<form action="${ctx}/xxtx/add_qt" method="post">
				<div>
				<input type="text" Name="name" placeholder="姓名" required="" style="#E6E6FA">
				</div>
				<div>
				<input type="email" Name="youXiang" placeholder="邮箱" required="">
				</div>
				<div>
				<input type="text" Name="dianHua" placeholder="电话" required="">
				</div>
				<div>
				<input type="text" Name="danWei" placeholder="单位" required="">
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
        <a href="${ctx}/news/list_qtqb"><img src="${ctx}/images/02.png"><span>新闻首页</span> </a>
        </li>
        <li>
        <a href="#"><img src="${ctx}/images/07.png">信息填写</a>
        </li>
        <li>
        <a href="${ctx}/ynjd/index"><img src="${ctx}/images/04.png"><span>疑难解答</span></a>
        </li>
          <li>
          <a href="${ctx}/center.jsp"><img src="${ctx}/images/03.png"><span>个人中心</span></a>
        </li>
      </ul>
    </div>
  <div id="nav4_masklayer" class="masklayer_div on">&nbsp;</div>
</div>

</body>
<!-- //Body -->

</html>