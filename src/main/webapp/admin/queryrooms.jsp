<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%><jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
<script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
<link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
</head>
<body class=" theme-blue">
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="content">
		<div class="header">
			<h1 class="page-title">客房信息列表</h1>
		</div>
		<div class="main-content">
			<table class="table">
				<thead>
					<tr>
						<th class="text-center">客房号</th>
						<th class="text-center">客房类型</th>
						<th class="text-center">单价</th>
						<th class="text-center">客房设备</th>
						<th class="text-center">朝向</th>
						<th class="text-center">面积</th>
						<th class="text-center">状态</th>
					</tr>
				</thead>
				<c:forEach items="${roomsList}" var="rooms">
					<tr align="center">
						<td class="center">${rooms.roomsno}</td>
						<td class="center">${rooms.catename}</td>
						<td class="center">${rooms.price}</td>
						<td class="center">${rooms.shebei}</td>
						<td class="center">${rooms.chaoxiang}</td>
						<td class="center">${rooms.mianji}</td>
						<td class="center">${rooms.status}</td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<li>
					<form action="rooms/queryRoomsByCond.action" name="myform" method="post">
						<label>查询条件: <select name="cond" style="width: 100px">
								<option value="roomsno">按客房号查询</option>
								<option value="cateid">按客房类型查询</option>
								<option value="price">按单价查询</option>
								<option value="image">按图片查询</option>
								<option value="shebei">按客房设备查询</option>
								<option value="chaoxiang">按朝向查询</option>
								<option value="mianji">按面积查询</option>
								<option value="status">按状态查询</option>
								<option value="contents">按客房介绍查询</option>
						</select>
						</label>&nbsp;&nbsp;&nbsp; <label>关键字: <input type="text" name="name" required style="width: 100px" /></label>&nbsp;&nbsp;&nbsp;
						<label><input type="submit" value="查询" class="mws-button green" /> </label>${html }
					</form>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>
