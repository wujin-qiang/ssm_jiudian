<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
						<th class="text-center">操作</th>
					</tr>
				</thead>
				<c:forEach items="${roomsList}" var="rooms">
					<tr align="center">
						<td>${rooms.roomsno}</td>
						<td>${rooms.catename}</td>
						<td>${rooms.price}</td>
						<td>${rooms.shebei}</td>
						<td>${rooms.chaoxiang}</td>
						<td>${rooms.mianji}</td>
						<td>${rooms.status}</td>
						<td><a href="rooms/getRoomsById.action?id=${rooms.roomsid}"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;<a
							href="rooms/deleteRooms.action?id=${rooms.roomsid}" onclick="{if(confirm('确定要删除吗?')){return true;}return false;}"><i
								class="fa fa-trash-o"></i></a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination">${html }</div>
		</div>
	</div>
</body>
</html>
