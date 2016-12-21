<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
	<head>
		<title>首页新闻页</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<meta name="Viewport"content="width=device-width,initial-scale=1，user-scalable=no">
		<link rel="stylesheet" href="${ctx }/css/zui.css">
		<link rel="stylesheet" href="${ctx }/css/ayangshi.css">
		<link rel="stylesheet" href="${ctx }/css/pgwmenu.css">
    <link rel="stylesheet" href="${ctx }/css/dilan.css">
    <link rel="stylesheet" href="${ctx }/css/zhonglan.css">
		<link rel="stylesheet" type="text/css" href="${ctx }/css/menu.css" media="all"/>

  
		 
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
	<!--轮播图-->

<img src="${ctx }/docs/img/img4.jpg"  class="img-responsive" alt="响应式图片测试">
<div>
      <div style="float:left; width:83%;">
         <input type="text" class="form-control" style="" placeholder="请输入搜索内容" >
      </div>
      <div>
         <a class="btn" style="magin-left:30px;" href="your/url/">搜索</a>
      </div>
</div>


<div class="cards">
<div class="nav4zhon">
      <ul class="boxzhong">
        
        <li>
        
        <a href="#"><span>新闻首页</span> </a>
        </li>
        
        <li>
        <a href="">信息填写</a>
          
        </li>
        <li>
        <a href=""><span>疑难解答</span></a>
          
        </li>
         
      </ul>
    </div>
  <div class="col-md-4">
    
      <a href="${ctx }/path/to/card/detail/content">
      
  <img src="${ctx }/docs/img/imggw.png"  class="img-responsives" alt="响应式图片测试">
</a>
      <a href="${ctx }/path/to/card/detail/content">
      
  <img src="${ctx }/docs/img/imgxn.png"  class="img-responsives" alt="响应式图片测试">
</a>
      <a href="${ctx }/path/to/card/detail/content">
      
  <img src="${ctx }/docs/img/imgxs.png"  class="img-responsives" alt="响应式图片测试">
</a>
</div>



</div>

<div class="page-header">
  <h2>常见问题汇总 <span class="code">Summary of common problems</span></h2>
</div>

<div class="items items-hover">

    <div class="item">
    
      <div class="item-content">
      <a href="${ctx }/path/to/card/detail/content">
        <button class="btn btn-block " type="button">留学需要准备哪些相关手续</button>
      </a>
      </div>

    </div>
    <div class="item">
     <div class="item-content">
      <a href="${ctx }/path/to/card/detail/content">
        <button class="btn btn-block " type="button">留学相关材料交予单位</button>
        </a>
      </div>
    </div>
    <div class="item">
      <div class="item-content">
       <a href="${ctx }/path/to/card/detail/content">
        <button class="btn btn-block " type="button">怎样能知道我是否符合留学条件</button>
        </a>
      </div>
    </div>
     <div class="item">
      <div class="item-content">
       <a href="${ctx }/path/to/card/detail/content">
        <button class="btn btn-block " type="button">我有哪些留学选择</button>
        </a>
      </div>
    </div>
   
  </div>


<!--底栏菜单-->
<!--底栏菜单-->
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
          <a href="${ctx }/../个人中心/个人中心.jsp"><img src="${ctx }/images/03.png"><span>个人中心</span></a>
          
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