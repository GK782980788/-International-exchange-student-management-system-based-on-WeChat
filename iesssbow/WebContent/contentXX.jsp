<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>文章内容</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Viewport Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstarp-css -->
<link href="${ctx}/css/bootstrap(nr).css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstarp-css -->
<!-- css -->
<link rel="stylesheet" href="${ctx}/css/style(nr).css" type="text/css" media="all" />
<!--// css -->

<!--fonts-->
<!--/fonts-->
<!-- dropdown -->

<link href="${ctx}/css/nav(nr).css" rel="stylesheet" type="text/css" media="all"/>

<!--js-->
<!--/js-->


<!-- start-smoth-scrolling -->


<!-- slider -->

<script>
    // You can also use "$(window).load(function() {"

  </script>
<!-- slider -->
</head>
<body>
	<div id="home" class="header">
		<div class="header-top">
			<!-- container -->
			<div class="container">
			
				<!-- script-for-menu -->
			</div>
			<!-- //container -->
		</div>
		<div class="header-bottom">
			<!-- container -->
			<div class="container">
				<div class="clearfix"> </div>
			</div>
			<!-- //container -->
		</div>
	</div>
	<!-- //header -->	
	<!-- bg-banner -->
	<div class="bg-banner">
		
			<div class="banner-bg"> 
				<div class="container">
					<!-- banner -->
					<div class="banner">
						<div class="banner-grids">						
							<div class="banner-middle">
                                
								<div class="strip"></div>
								<!-- banner-bottom-grids -->
								<div class="banner-bottom-grids">
									<!-- banner-bottom-left -->
									<div class="col-md-8 banner-bottom-left">
										<div class="banner-bottom-left-grids">
											<div class="single-left-grid">
												<img src="${ctx}/images/13(nr).png" alt="" />
												<h4>${xx_news.biaoTi}</h4>
												<div class="text"> ${xx_news.neiRongURL}</div>
												</div>
												<div class="single-bottom">
													<ul>
														<li><fmt:formatDate value="${xx_news.time}" pattern ="yyyy-MM-dd"></fmt:formatDate></li>
													</ul>
												</div>
											</div>
										</div>
									<div class="clearfix"> </div>
									<div class="up-arrow">
										<a class="scroll" href="#home">Back to Top</a>
									</div>
										<div class="fo">
										<!-- container -->

											<div class="col-md-3 footer-logo">
												<p>河北师大国际交流处</p>
											</div>
										</div>
								</div>
							</div>
						</div>
					</div>
					<!-- //banner -->
				</div>
			</div>
		 
	</div>	
	<!-- //bg-banner -->

</body>
</html>