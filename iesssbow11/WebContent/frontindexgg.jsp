<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
	<head>
		<title>新闻页首页</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<meta name="Viewport"content="width=device-width,initial-scale=1ï¼user-scalable=no">
		<link rel="stylesheet" href="${ctx }/css/zui.css">
		<link rel="stylesheet" href="${ctx }/css/ayangshi.css">
		<link rel="stylesheet" href="${ctx }/css/pgwmenu.css">
    	<link rel="stylesheet" href="${ctx }/css/dilan.css">
		<link rel="stylesheet" type="text/css" href="${ctx }/css/menu.css" media="all"/>
		
		<script src="${ctx }/js/doc.min.js"></script> 
		<script type="text/javascript" src="${ctx }/js/jquery.mobile-1.4.5.min.index.js"></script>
		<script type="text/javascript" src="${ctx }/js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="${ctx }/js/pgwmenu.min.js"></script>
        <script type="text/javascript" src="${ctx }/js/zui.lite.index.js"></script>
        <script type="text/javascript" src="${ctx }/js/less.min.js"></script>
        <!-- ZUI Javascriptç»ä»¶ -->
        <script src="${ctx }/js/zui.min.doc.js"></script>
        <script type="text/javascript" src="${ctx }/js/jquery.1.7.2.min.js"></script>
     	<script type="text/javascript" src="${ctx }/js/navfix.js"></script>
		<script type="text/javascript">
			$(document).ready(function(e) {
 			$('#mynav').navfix(0,999);    
			});
		//第一个值： 你期望导航在距离顶部多少的位置浮动
		//第二个值： 导航zindex
		</script>
   
   <!-- 增强文档插件 -->

     <script async src="${ctx }/js/prettify.js"></script>
    <script src="${ctx }/js/marked.min.js"></script>
    <script type="text/javascript">
    window.onload=function(){
    var nav=document.getElementById('mynav');
    var selected=document.getElementById('selected');
    selected.style.backgroundColor="#c3c3c3";
    nav.onclick=function(){
      selected.style.backgroundColor="";
    }
  }

    </script>
	</head>
	<body>
	<!-- 轮播图-->
<div id="myNiceCarousel" class="carousel slide" data-ride="carousel">
  <!-- 圆点指示器 -->

  <ol class="carousel-indicators">
    <li data-target="#myNiceCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myNiceCarousel" data-slide-to="1"></li>
    <li data-target="#myNiceCarousel" data-slide-to="2"></li>
  </ol>

  <!-- 轮播项目 -->
  <div class="carousel-inner">
    <div class="item active">
      <img alt="First slide" src="${ctx }/images/banner01.jpg">
      <div class="carousel-caption">
        <h3>我是第一张幻灯片</h3>
        <p>:)</p>
      </div>
    </div>
    <div class="item">
      <img alt="Second slide" src="${ctx }/images/banner02.jpg">
      <div class="carousel-caption">
        <h3>我是第二张幻灯片</h3>
        <p>0.0</p>
      </div>
    </div>

    <div class="item">
      <img alt="Third slide" src="${ctx }/images/banner03.jpg">
      <div class="carousel-caption">
        <h3>我是第三张幻灯片</h3>
        <p>最后一张喽~</p>
      </div>
    </div>
  </div>

   <!-- 项目切换按钮 -->
  <a class="left carousel-control" href="${ctx }/#myNiceCarousel" data-slide="prev">
    <span class="icon icon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="${ctx }/#myNiceCarousel" data-slide="next">
    <span class="icon icon-chevron-right"></span>
  </a>
</div>

	<!--上部菜单栏-->
	<div id="mynav" style="position:relative;top:auto;z-index:999;width:100%;">
<ul class="pgwMenu light">
	
	<li target="_blank"><a href="${ctx }/frontindex.jsp">全部</a></li>
	<li target="_blank"><a href="${ctx }/frontindexrd.jsp">热点</a></li>
	<li target="_blank"><a id="selected" href="${ctx }/frontindexgg.jsp">公告</a></li>
	<li target="_blank"><a href="${ctx }/frontindexxn.jsp">校内</a></li>

	<li><a href="${ctx }/frontindexgj.jsp">国际</a></li>
</ul>
</div>
<!--新闻内容-->
 <a href="${ctx }/content.jsp">   
<div class="items items-hover">
  <div class="item">
    <div class="item-heading">
      <div class="pull-right label label-success">河北师大国际合作处</div>
      <h4>公告页</h4>
    </div>
    <div class="item-content">
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
      <div class="text">HTML 5草案的前身名为Web Applications 1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet Explorer（版本9以上）已支持HTML5技术。</div>
    </div>
    <div class="item-footer">
      <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
    </div>
  </div>
</div>
</a>
<div class="black"></div>
<a href="${ctx }/content.jsp">   
<div class="items items-hover">
  <div class="item">
    <div class="item-heading">
      <div class="pull-right label label-success">河北师大国际合作处</div>
      <h4>公告页</h4>
    </div>
    <div class="item-content">
      <div class="text">HTML 5草案的前身名为Web Applications 1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet Explorer（版本9以上）已支持HTML5技术。</div>
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
    </div>
    <div class="item-footer">
      <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
    </div>
  </div>
</div>
</a>
<div class="black"></div>
<a href="${ctx }/content.jsp">   
<div class="items items-hover">
  <div class="item">
    <div class="item-heading">
      <div class="pull-right label label-success">河北师大国际合作处</div>
      <h4>公告页</h4>
    </div>
    <div class="item-content">
      
      <div class="text">HTML 5草案的前身名为Web Applications 1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet Explorer（版本9以上）已支持HTML5技术。</div>
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
    </div>
    <div class="item-footer">
      <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
    </div>
  </div>
</div>
</a>
<div class="black"></div>
<a href="${ctx }/content.jsp">   
<div class="items items-hover">
  <div class="item">
    <div class="item-heading">
      <div class="pull-right label label-success">河北师大国际合作处</div>
      <h4>公告页</h4>
    </div>
    <div class="item-content">
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
      <div class="text">HTML 5草案的前身名为Web Applications 1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet Explorer（版本9以上）已支持HTML5技术。</div>
    </div>
    <div class="item-footer">
      <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
    </div>
  </div>
</div>
</a>
<div class="black"></div>
<a href="${ctx }/content.jsp">   
<div class="items items-hover">
  <div class="item">
    <div class="item-heading">
      <div class="pull-right label label-success">河北师大国际合作处</div>
      <h4>公告页</h4>
    </div>
    <div class="item-content">
      <div class="media pull-right"><img src="${ctx }/images/banner02.jpg" alt=""></div>
      <div class="text">HTML 5草案的前身名为Web Applications 1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet Explorer（版本9以上）已支持HTML5技术。</div>
    </div>
    <div class="item-footer">
      <a href="#" class="text-muted"><i class="icon-comments"></i> 243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
    </div>
  </div>
</div>
</a>
<!--低栏菜单-->

<div class="nav4">

  
    <div id="nav4_ul" class="nav_4">
      <ul class="box">
        
        <li>
        
        <a href="#"><img src="${ctx }/images/06.png"><span>新闻首页</span> </a>
        </li>
        
        <li>
        <a href=""><img src="${ctx }/images/08.png">信息填写</a>
          
        </li>
        <li>
        <a href=""><img src="${ctx }/images/04.png"><span>疑难解答</span></a>
          
        </li>
          <li>
          <a href="${ctx }/center.jsp"><img src="images/03.png"><span>个人中心</span></a>
        
        </li>
      </ul>
    </div>
  
  
 <div id="nav4_masklayer" class="masklayer_div on">&nbsp;</div>

</div>


	</body>
</html>