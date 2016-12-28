<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
	<head>
		<title>疑难解答</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<meta name="Viewport"content="width=device-width,initial-scale=1，user-scalable=no">
		<link rel="stylesheet" href="${ctx }/css/zuiyn.css">
		<link rel="stylesheet" href="${ctx }/css/ayangshiyn.css">
		<link rel="stylesheet" href="${ctx }/css/pgwmenuyn.css">
    <link rel="stylesheet" href="${ctx }/css/dilanyn.css">
    <link rel="stylesheet" href="${ctx }/css/zhonglan.css">
		<link rel="stylesheet" type="text/css" href="${ctx }/css/menuyn.css" media="all"/>

  
		 
		<script type="text/javascript" src="${ctx }/js/jquery.mobile-1.4.5.min.js"></script>
		<script type="text/javascript" src="${ctx }/js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="${ctx }/js/pgwmenu.min.js"></script>
        <script type="text/javascript" src="${ctx }/js/zui.lite.js"></script>
        <script type="text/javascript" src="${ctx }/assets/less/less.min.js"></script>
        <!-- ZUI Javascript组件 -->
    <script src="${ctx }/docs/js/zui.min.js"></script>
    <script src="${ctx }/docs/js/doc.min.js"></script>
    <!-- 增强文档插件 -->
     <script async src="${ctx }/assets/prettify/prettify.js"></script>
    <script src="${ctx }/assets/marked/marked.min.js"></script>
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
        <h5 align="center"  style="background-color:white;height:20px;padding-top:4px;font-size:1em;
    	-webkit-margin-start: 0px;
    	-webkit-margin-end: 0px;">疑难解答</h5>
       
	<!--轮播图-->

<img src="${ctx }/images/sky3.jpg"  class="img-responsive" alt="响应式图片测试">
<div>
	<form action="${ctx}/ynjd/list_find" method="POST">
	  <input type="hidden" name="leiXing"/>
      <div style="float:left; width:83%;">
         <input type="text" name="searchParam" class="form-control" style="" placeholder="请输入搜索内容" >
      </div>
      <div>
      	<button class="btn" style="magin-left:30px;" type="submit">搜索</button>

      </div>
      </form>
</div>


<div class="cards">
<div class="nav4zhon">
     
    </div>
  <div class="col-md-4">
      <a href="${ctx }/ynjd/list_three?leiXing=国外">
  <img src="${ctx }/img/imggw.png"  class="img-responsives">
</a>
  <a href="${ctx }/ynjd/list_three?leiXing=校内">
      
  <img src="${ctx }/img/imgxn.png"  class="img-responsives">
</a>
  <a href="${ctx }/ynjd/list_three?leiXing=新生">
      
  <img src="${ctx }/img/imgxs.png"  class="img-responsives">
</a>
</div>
</div>
<div style="text-align: center; font-family:"Arial","Microsoft YaHei","楷体",sans-serif; " class="page-header">
  <h3>常见问题汇总 <span class="code"></span></h3>
</div>

<div class="items items-hover">

    <div class="item">
    <c:forEach items="${page.list}" var="p">
    <form action="${ctx }/ynjd/content" method="post">
      <input type="hidden" name="id_YN" value="${p.id_YN}"> 
      <div class="item-content">
        <button class="btn btn-block " type="submit">${p.question}</button>
      </div>
      </form>
    <div style="height:10px;"></div>
   	</c:forEach>
  </div>
<!--底栏菜单-->
<!--底栏菜单-->
<div class="nav4" >
    <div id="nav4_ul" class="nav_4">
      <ul class="box">
        <li>
        <a href="${ctx }/news/list_qtqb"><img src="${ctx }/images/02.png"><span>新闻首页</span> </a>
        </li>
        <li>
        <a href="${ctx }/frontxxtx.jsp"><img src="${ctx }/images/08.png">信息填写</a>
        </li>
        <li>
        <a href="#"><img src="${ctx }/images/01.png"><span>疑难解答</span></a>
        </li>
          <li>
          <a href="${ctx }/center.jsp"><img src="${ctx }/images/03.png"><span>个人中心</span></a>
        </li>
      </ul>
    </div>
  
  
 <div id="nav4_masklayer" class="masklayer_div on">&nbsp;</div>

</div>

<script type="text/javascript" src="${ctx }/js/jquery.1.7.2.min.js"></script>
<script type="text/javascript" src="${ctx }/js/navfix.js"></script>
<script type="text/javascript">
$(document).ready(function(e) {
 $('#mynav').navfix(0,999);    
});
//第一个值： 你期望导航在距离顶部多少的位置浮动
//第二个值： 导航zindex
</script>
	</body>
</html>