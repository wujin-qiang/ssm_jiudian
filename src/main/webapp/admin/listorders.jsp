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
<%
	String message = (String) session.getAttribute("message");
	if (message == null) {
		message = "";
	}
	if (!message.trim().equals("")) {
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("</script>");
	}
	session.removeAttribute("message");
%>
<body class=" theme-blue">
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="content">
		<div class="header">
			<h1 class="page-title">客房订单信息列表</h1>
		</div>
		<div class="main-content">
			<table class="table">

				<thead>
					<tr>
						<th class="text-center">订单号</th>
						<th class="text-center">用户</th>
						<th class="text-center">客房</th>
						<th class="text-center">单价</th>
						<th class="text-center">开始日期</th>
						<th class="text-center">结束日期</th>
						<th class="text-center">总计</th>
						<th class="text-center">状态</th>
						<th class="text-center">操作</th>
					</tr>
				</thead>
				<c:forEach items="${ordersList}" var="orders">
					<tr align="center">
						<td>${orders.ordercode}</td>
						<td>${orders.username}</td>
						<td>${orders.roomsno}</td>
						<td>${orders.price}</td>
						<td>${orders.thestart}</td>
						<td>${orders.theend}</td>
						<td>${orders.total}</td>
						<td>${orders.status}</td>
						<td><c:if test="${orders.status eq '未入住'}">
								<a href="orders/stayin.action?id=${orders.ordersid}">入住</a>&nbsp;&nbsp;
						</c:if> <c:if test="${orders.status eq '已入住'}">
								<a href="orders/checkout.action?id=${orders.ordersid}">结算</a>&nbsp;&nbsp;
						</c:if> <a href="orders/deleteOrders.action?id=${orders.ordersid}"
							onclick="{if(confirm('确定要删除吗?')){return true;}return false;}"><i class="fa fa-trash-o"></i></a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination">${html }</div>
		</div>
	</div>
</body>
</html>
