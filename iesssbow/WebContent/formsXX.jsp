<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
        <title>信息管理-添加申请表</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

        
        <!-- jQuery AND jQueryUI -->
        <script type="text/javascript" src="${ctx}/js/libs/jquery/1.6/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx}/js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
       
        <link rel="stylesheet" href="${ctx}/css/min.css" />
        <link rel="stylesheet" href="${ctx}/css/minn.css" />
        <script type="text/javascript" src="${ctx}/js/min.js"></script>
        
    </head>
    <body>
        
        <script type="text/javascript" src="${ctx}/content/settings/main.js"></script>
       <link rel="stylesheet" href="${ctx}/content/settings/style.css" />


 
        <!--              
                HEAD
                        --> 
        <div id="head">
            <div class="left">
                <a href="#" class="button profile"><img src="${ctx }/img/icons/top/huser.png" alt="" /></a>
               	您好，
                ${userName}
            </div>
            <div class="right">
                <form action="#" id="search" class="search placeholder">
                    <label>Looking for something ?</label>
                    <input type="text" value="" name="q" class="text"/>
                    <input type="submit" value="rechercher" class="submit"/>
                </form>
            </div>
        </div>
                
                
        <!--            
                SIDEBAR
                         --> 
		<div id="sidebar">
            <ul>
                <li>
                    <a>
                        <img src="${ctx}/img/icons/menu/inbox.png" alt="" />
                        欢迎
                    </a>
                </li>
                <li><a href="#"><img src="${ctx }/img/icons/menu/layout.png" alt="" /> 新闻管理</a>
                    <ul>
                        <li><a href="${ctx }/news/list_gg">公告</a></li>
                        <li><a href="${ctx }/news/list_rd">热点</a></li>
                        <li><a href="${ctx }/news/list_gj">国际</a></li>
                        <li><a href="${ctx }/news/list_xn">校内</a></li>
                        <li><a href="${ctx }/formsXW.jsp">添加新闻</a></li>
                        <li><a href="${ctx }/shouyelunbotu/list">添加首页轮播图</a></li>
                    </ul>
                </li>
                <li  class="current"><a href="#"><img src="${ctx }/img/icons/menu/brush.png" alt="" /> 信息管理</a>
                    <ul>
                        <li><a href="${ctx}/xxtx/list">信息模板一</a></li>
                        <li><a href="#">信息模板二</a></li>
                        <li><a href="#">信息模板三</a></li>
                        <li class="current"><a href="${ctx }/formsXX.jsp">添加申请表</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="${ctx }/img/icons/menu/factory.png" alt="" /> 疑难问题管理</a>
                    <ul>
                        <li><a href="${ctx}/ynjd/list?leiXing=校内">校内专区</a></li>
                        <li><a href="${ctx}/ynjd/list?leiXing=国外">国外专区</a></li>
                        <li><a href="${ctx}/ynjd/list?leiXing=新生">新生专区</a></li>
                        <li><a href="${ctx}/ynjd/list?leiXing=常见">常见问题专区</a></li>
                        <li><a href="${ctx}/formsYN.jsp">添加专区</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="${ctx }/img/icons/menu/lab.png" alt="" />学生管理</a>
                    <ul>
                        <li><a href="${ctx }/student/list_hg">韩国学生</a></li>
                        <li><a href="${ctx }/student/list_yn">印尼学生</a></li>
                        <li><a href="${ctx }/student/list_bx">巴西学生</a></li>
                        <li><a href="${ctx }/student/list_rb">日本学生</a></li>
                        <li><a href="${ctx }/formsXS.jsp">添加学生</a></li>
                     </ul>
                </li>
                <li><a href="#"><img src="${ctx }/img/icons/menu/flag.png" alt="" />定向消息</a>
                    <ul>
                        <li><a href="${ctx }/news/list_dxhg">韩国消息</a></li>
                        <li><a href="${ctx }/news/list_dxyn">印尼消息</a></li>
                        <li><a href="${ctx }/news/list_dxbx">巴西消息</a></li>
                        <li><a href="${ctx }/news/list_dxrb">日本消息</a></li>
                        <li><a href="${ctx}/formsDX.jsp">添加消息</a></li>
                     </ul>
                </li>
            </ul>
        </div>  
        <!--            
              CONTENT 
                        --> 
       
        <div id="content" class="white">
            <h1><img src="${ctx}/img/icons/posts.png" alt="" /> 信息管理-添加申请表</h1>

<div class="bloc">
<div class="title">
        添加申请表
      </div>
          <c:if test="${action!='edit' }">
       <div class="content">
     
        <form action="${ctx }/xxtx/add" method="post">
        
        <div class="first">
        <div class="input" >
            <label for="input1">姓名</label>
            <input type="text" name="name" id="input1" />
        </div>
        <br/>
        <br/>
        <div class="input">
            <label for="input2">单位</label>
            <input type="text" name="danWei" id="input2" />
        </div>
        </div>
        <div class="second">
        <div class="input">
            <label for="input3">邮箱</label>
            <input type="text" name="youXiang" id="input3" />
        </div>
        <br/>
        <br/>
        <div class="input">
            <label for="input4">电话</label>
            <input type="text" name="dianHua" id="input4" />
        </div>
        </div>
        <div class="submit">
        <input type="submit" value="提交" />
        </div>
        </form>
    </div>
    </c:if>
         <!-- *******************************edit********************************************** -->
         <c:if test="${action=='edit' }">
         <%session.setAttribute("action", "add");%>
 		<div class="content">
        <form action="${ctx }/xxtx/edit" method="post">
        
        <div class="first">
        <div class="input" >
            <label for="input1">姓名</label>
            <input type="text" name="name" id="input1" value="${xxtx03.name }" />
        </div>
        <br/>
        <br/>
        <div class="input">
            <label for="input2">单位</label>
            <input type="text" name="danWei" id="input2" value="${xxtx03.danWei }"  />
        </div>
        </div>
        <div class="second">
        <div class="input">
            <label for="input3">邮箱</label>
            <input type="text" name="youXiang" id="input3"  value="${xxtx03.youXiang }" />
        </div>
        <br/>
        <br/>
        <div class="input">
            <label for="input4">电话</label>
            <input type="text" name="dianHua" id="input4"  value="${xxtx03.dianHua }" />
        </div>
        </div>
        <div class="submit">
        <input type="submit" value="提交" />
        </div>
        </form>
    </div>
    </c:if>
    <!-- ***********************************************/edit********************************************* -->
    </div>
	</div>


        
    </body>
</html>