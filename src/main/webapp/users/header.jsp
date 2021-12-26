<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<link href="themes/xecmoban_haier2015/style.css" rel="stylesheet" type="text/css" />


<div class="ng-toolbar">
	<div class="ng-toolbar-con block">
		<div class="ng-toolbar-left">&nbsp;</div>
		<div class="ng-toolbar-right">
			<div class="ng-bar-node reg-bar-node" id="reg-bar-node" style="display: block;">
				<c:if test="${sessionScope.userid == null }">
					欢迎光临本站！
				<s></s>&nbsp;
				<span> <a style="color: #FF6766;" href="index/preLogin.action">[用户登录]</a>&nbsp;<a style="color: #FF6766;"
						href="index/preReg.action">[用户注册]</a>
					</span>

				</c:if>
				<c:if test="${sessionScope.userid != null }">
				你好 <b>${sessionScope.username }</b>
					<span><a style="color: #FF6766;" href="index/fcart.action">[餐饮预订]</a>&nbsp;<a style="color: #FF6766;"
						href="index/cart.action">[客房预订]</a>&nbsp;<a style="color: #FF6766;" href="index/usercenter.action">[用户中心]</a>
						&nbsp;<a style="color: #FF6766;" href="index/exit.action">[退出系统] </a> </span>
				</c:if>
			</div>
		</div>
	</div>
</div>
<div class="ng-header">
	<div class="ng-header-con block">
		<div class="ng-header-box">
			<a href="index.jsp" class="logo"> <img src="themes/xecmoban_haier2015/images/logo.gif" />
			</a>
			<div class="ng-search">
				<div class="g-search">
				</div>
			</div>
		</div>
	</div>
</div>
<div class="ng-nav-bar">
	<div class="block">
		<div class="ng-nav-index">
			<ul class="ng-nav">
				<li><a href="index.jsp" class="cur">首页</a></li>
				<li><a href="index/article.action" class="cur">网站公告</a></li>
				<li><a href="index/rooms.action" class="cur">酒店客房</a></li>
				<li><a href="index/foods.action" class="cur">酒店餐饮</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="blank"></div>