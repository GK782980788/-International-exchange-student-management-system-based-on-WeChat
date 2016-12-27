<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% response.setContentType("text/html;charset=UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
        <title>欢迎</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

        
        <!-- jQuery AND jQueryUI -->
        <script type="text/javascript" src="${ctx }/js/libs/jquery/1.6/jquery.min.js"></script>
        <script type="text/javascript" src="${ctx }/js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
        
        <!-- Compressed Version
        <link type="text/css" rel="stylesheet" href="min/b=CoreAdmin&f=css/reset.css,css/style.css,css/jqueryui/jqueryui.css,js/jwysiwyg/jquery.wysiwyg.old-school.css,js/zoombox/zoombox.css" />
        <script type="text/javascript" src="min/b=CoreAdmin/js&f=cookie/jquery.cookie.js,jwysiwyg/jquery.wysiwyg.js,tooltipsy.min.js,iphone-style-checkboxes.js,excanvas.js,zoombox/zoombox.js,visualize.jQuery.js,jquery.uniform.min.js,main.js"></script>
        -->
        <link rel="stylesheet" href="${ctx }/css/min.css" />
        <script type="text/javascript" src="${ctx }/js/min.js"></script>
        
    </head>
    <body>
        
        <script type="text/javascript" src="${ctx }/content/settings/main.js"></script>
<link rel="stylesheet" href="${ctx }/content/settings/style.css" />


 
    </div>        
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
                    <a href="index.jsp">
                        <img src="${ctx }/img/icons/menu/inbox.png" alt="" />
                        欢迎
                    </a>
                </li>
                <li  class="current"><a href="#"><img src="${ctx }/img/icons/menu/layout.png" alt="" /> 新闻管理</a>
                    <ul>
                                                <li><a href="${ctx }/tableXWgg.jsp?p=table">公告</a></li>
                                                <li><a href="${ctx }/tableXWrd.jsp?p=table">热点</a></li>
                                                <li><a href="${ctx }/tableXWgj.jsp?p=table">国际新闻</a></li>
                                                <li><a href="${ctx }/tableXWxn.jsp?p=table">校内新闻</a></li>
                                                <li><a href="${ctx }/formsXW.jsp">添加新闻</a></li>
                                                <li><a href="${ctx }/formLB.jsp">添加首页轮播图</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="${ctx }/img/icons/menu/brush.png" alt="" /> 信息管理</a>
                    <ul>
                        <li><a href="${ctx }/table.jsp?p=table">学生基本信息表</a></li>
                        <li><a href="${ctx }/table.jsp?p=table">奖学金申请表</a></li>
                        <li><a href="${ctx }/table.jsp?p=table">助学金申请表</a></li>
                        <li><a href="${ctx }/forms.jsp?p=forms">添加申请表</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="${ctx }/img/icons/menu/factory.png" alt="" /> 疑难问题管理</a>
                    <ul>
                        <li><a href="${ctx }/table.jsp?p=table">韩国专区</a></li>
                        <li><a href="${ctx }/table.jsp?p=table">日本专区</a></li>
                        <li><a href="${ctx }/table.jsp?p=table">印尼巴西专区</a></li>
                        <li><a href="${ctx }/forms.jsp?p=forms">添加专区</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="${ctx }/img/icons/menu/lab.png" alt="" />学生管理</a>
                    <ul>
                        <li><a href="${ctx }/tableXShg.jsp">韩国学生</a></li>
                        <li><a href="${ctx }/tableXSyn.jsp">印尼学生</a></li>
                        <li><a href="${ctx }/tableXSbx.jsp">巴西学生</a></li>
                        <li><a href="${ctx }/tableXSrb.jsp">日本学生</a></li>
                        <li><a href="${ctx }/formsXS.jsp">添加学生</a></li>
                     </ul>
                </li>
                <li><a href="#"><img src="${ctx }/img/icons/menu/flag.png" alt="" />定向消息</a>
                    <ul>
                        <li><a href="${ctx }/tableDXhg.jsp">韩国消息</a></li>
                        <li><a href="${ctx }/tableDXyn.jsp">印尼消息</a></li>
                        <li><a href="${ctx }/tableDXbx.jsp">巴西消息</a></li>
                        <li><a href="${ctx }/tableDXrb.jsp">日本消息</a></li>
                        <li><a href="${ctx }/formsDX.jsp">添加消息</a></li>
                     </ul>
                </li>
            </ul>


        </div>  
        <!--            
              CONTENT 
                        --> 
        <div id="content" class="white">
            <h1><img src="${ctx }/img/icons/dashboard.png" alt="" /> 国际交流生服务系统
</h1>
  <div class="bloc">
    <div class="title">
      content
    </div>
    <div class="content">
     
        <a href="affiche.html" class="shortcut">
            <img src="${ctx }/img/ico01.png" alt="" />
            公告
        </a>
        <a href="${ctx }/binformation" class="shortcut">
            <img src="${ctx }/img/ico02.png" alt=""  width="32" height="32"/>
            学生基本信息表
        </a>
        <a href="${ctx }/cus.html" class="shortcut">
            <img src="${ctx }/img/ico03.png" alt=""  width="32" height="32"/>
             留美专区
        </a>
        <a href="${ctx }/dmessage.html" class="shortcut">
            <img src="${ctx }/img/ico04.png" alt=""  width="32" height="32"/>
            消息管理
        </a>
        <a href="${ctx }/ahotspot.html" class="shortcut">
            <img src="${ctx }/img/ico05.png" alt=""  width="32" height="32"/>
            热点
        </a>
        <a href="common.html" class="shortcut">
            <img src="${ctx }/img/ico06.png" alt=""  width="32" height="32"/>
            常见问题
        </a>
        <div class="cb"></div>
    </div>
</div>  
               



                
<div class="bloc">
    <div class="title">
        Today
    </div>
    <div class="content">
        <div class="left">
            <table class="noalt">
                <thead>
                    <tr>
                        <th colspan="2"><em>Content</em></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><h4>460</h4></td>
                        <td>Posts</td>
                    </tr>
                    <tr>
                        <td><h4>12</h4></td>
                        <td>Pages</td>
                    </tr>
                    <tr>
                        <td><h4>5</h4></td>
                        <td>Categories</td>
                    </tr>
                    <tr>
                        <td><h4>20 000</h4></td>
                        <td>Contacts</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="right">
            <table class="noalt">
                <thead>
                    <tr>
                        <th colspan="2"><em>Comments</em></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><h4>46 000</h4></td>
                        <td class="good">Comments</td>
                    </tr>
                    <tr>
                        <td><h4>5</h4></td>
                        <td class="neutral">Waiting for validation</td>
                    </tr>
                    <tr>
                        <td><h4>0</h4></td>
                        <td class="bad">Spams</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="cb"></div>
    </div>
</div>

<div class="cb"></div>




   </div>
        
        
    </body>
</html>