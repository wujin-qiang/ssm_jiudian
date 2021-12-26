<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href=".">首页</a>
			<code> &gt; </code>
			客房订单
		</div>
	</div>
	<div class="blank"></div>

	<div class="blank"></div>
	<div class="block clearfix">

		<div class="AreaL">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox">
						<jsp:include page="usermenu.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</div>
		<div class="AreaR">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox boxCenterList clearfix" style="_height: 1%;">
						<h5>
							<span>客房订单</span>
						</h5>
						<div class="blank"></div>
						<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
							<tr>
								<td align="center" bgcolor="#ffffff">订单号</td>
								<th align="center" bgcolor="#ffffff">用户</th>
								<th align="center" bgcolor="#ffffff">客房</th>
								<th align="center" bgcolor="#ffffff">单价</th>
								<th align="center" bgcolor="#ffffff">开始日期</th>
								<th align="center" bgcolor="#ffffff">结束日期</th>
								<th align="center" bgcolor="#ffffff">总计</th>
								<th align="center" bgcolor="#ffffff">状态</th>
							</tr>
							<c:forEach items="${ordersList}" var="orders">
								<tr>
									<td align="center" bgcolor="#ffffff">${orders.ordercode}</td>
									<td align="center" bgcolor="#ffffff">${orders.username}</td>
									<td align="center" bgcolor="#ffffff">${orders.roomsno}</td>
									<td align="center" bgcolor="#ffffff">${orders.price}</td>
									<td align="center" bgcolor="#ffffff">${orders.thestart}</td>
									<td align="center" bgcolor="#ffffff">${orders.theend}</td>
									<td align="center" bgcolor="#ffffff">${orders.total}</td>
									<td align="center" bgcolor="#ffffff">${orders.status}</td>
								</tr>
							</c:forEach>
						</table>
						<div class="blank5"></div>
						<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
							<tr>
								<td align="center" bgcolor="#ffffff">${html}</td>
							</tr>
						</table>

					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="blank"></div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
