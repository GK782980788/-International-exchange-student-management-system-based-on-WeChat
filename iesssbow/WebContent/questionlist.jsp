<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
	<head>
		<title>疑难解答页</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
		<meta name="Viewport"content="width=device-width,initial-scale=1，user-scalable=no">
		<link rel="stylesheet" href="${ctx}/css/question.css">				
		<style type="text/css">
    body{
      background-color:rgb(240,240,240);
    }
    </style>  
    <script type="text/javascript">
    function tijiao(c){
    	document.getElementById(c).submit();
    }
    </script>      
	</head>
	<body>	
    <h3 class="header-header" align="center"></h3>
    <img alt="First slide" src="${ctx}/images/10484764.jpg">    
    <div style="height: 15px;background-color: rgb(240,240,240);"></div>	
    <c:forEach items="${page.list}" var="p">
    <form action ="${ctx}/ynjd/content" id="${p.id_YN }"  method="post">
    <input type="hidden" name="id_YN" value="${p.id_YN}"/>
    <div class="list-group" onclick="tijiao(${p.id_YN});">
    <a class="list-group-item" style="border-radius: 20px;">
    <div style="height: 80px;"class="m"">
      <h4>${p.question}</h4>
      <div style="padding-left:20px; white-space:nowrap;overflow:hidden;
    text-overflow:ellipsis;">${p.answer}
      </div>
    </div>
    </a> 
    </div>
    </form>
	</c:forEach>


	</body>
</html>