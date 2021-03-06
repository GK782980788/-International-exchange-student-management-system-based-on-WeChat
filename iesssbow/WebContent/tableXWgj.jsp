<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
        <title>新闻列表</title>
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
                        <img src="${ctx }/img/icons/menu/inbox.png" alt="" />
                        欢迎
                    </a>
                </li>
                <li  class="current"><a href="#"><img src="${ctx }/img/icons/menu/layout.png" alt="" /> 新闻管理</a>
                    <ul>
                                                <li><a href="${ctx }/news/list_gg">公告</a></li>
                                                <li><a href="${ctx }/news/list_rd">热点</a></li>
                                                <li class="current"><a href="${ctx }/news/list_gj">国际</a></li>
                                                <li><a href="${ctx }/news/list_xn">校内</a></li>
                                                <li><a href="${ctx }/formsXW.jsp">添加新闻</a></li>
                                                <li><a href="${ctx }/shouyelunbotu/list">添加首页轮播图</a></li>
                    </ul>
                </li>
                <li><a href="#"><img src="${ctx }/img/icons/menu/brush.png" alt="" /> 信息管理</a>
                    <ul>
                        <li><a href="${ctx}/xxtx/list">信息模板一</a></li>
                        <li><a href="#">信息模板二</a></li>
                        <li><a href="#">信息模板三</a></li>
                        <li><a href="${ctx }/formsXX.jsp">添加申请表</a></li>
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
            <h1><img src="${ctx }/img/icons/posts.png" alt="" />新闻管理</h1>
<div class="bloc">
    <div class="title">
        国际新闻
    </div>
    <div class="content">
        <table>
            <thead>
                <tr>
                    <th>标题</th>
                    <th>定向国籍</th>
                    <th>时间</th>
                    <th>内容</th>
                    <th style="text-align:right;">编辑&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                </tr>
            </thead>
            <tbody>
             	<c:forEach items="${page.list}" var="p">
					<c:if test="${p.isFaBu==true}">
					<tr>
						<td>${p.biaoTi}</td>
						<td>	
								<c:if test="${p.isKorean eq null}">
								<c:if test="${p.isJapanese eq null}">
								<c:if test="${p.isIndonesians eq null}">
								<c:if test="${p.isBrazilians eq null}">
								无
								</c:if>
								</c:if>
								</c:if>
								</c:if>
								<c:if test="${p.isKorean}">
									<c:set var="count" value="0"></c:set>
									韩国&nbsp
								</c:if>
								<c:if test="${p.isJapanese}">
									<c:set var="count" value="0"></c:set>
									日本&nbsp
								</c:if>
								<c:if test="${p.isIndonesians}">
									<c:set var="count" value="0"></c:set>
									印尼&nbsp
								</c:if>
								<c:if test="${p.isBrazilians}">
								<c:set var="count" value="0"></c:set>
									巴西&nbsp
							</c:if>
						</td>
						<td><fmt:formatDate value="${p.time}" pattern ="yyyy-MM-dd"></fmt:formatDate></td>
						<td>${p.neiRong}</td>
						<td style="text-align:right;">
						<a href="${ctx }/news/edit?id_news=${p.id_news }" title="编辑信息"><img  style="border: 1px sold #ccc; padding-left:20px;padding-right:45px;" src="${ctx }/img/icons/actions/edit.png"/></a>
						<a href="${ctx }/news/delete_gj?id_news=${p.id_news }" title="删除信息"><img src="${ctx }/img/icons/actions/delete.png"/></a>
						</td>
					</tr>
					</c:if>
				</c:forEach>
               </tbody>
        </table>
        <div class="left input">
        </div>
        <div class="pagination">
        	<c:forEach begin="1" end="${page.totalPageNum }" var="pageNum">
				<a name="pagen"  href="${ctx }/news/list_gj?pageNum=${pageNum }" class="current">${pageNum }</a>
			</c:forEach>
        </div>
    </div>
</div>
      </div>
        
        
    </body>
</html>