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
			客房预订
		</div>
	</div>
	<div class="blank"></div>
	<div class="block table">
		<div class="flowBox">
			<h6>
				<span>客房预订</span>
			</h6>
			<form action="index/deletecart.action" method="post">
				<table width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
					<tr>
						<th bgcolor="#ffffff">商品名称</th>
						<th bgcolor="#ffffff">价格</th>
						<th bgcolor="#ffffff">预订日期</th>
						<th bgcolor="#ffffff">预订入住开始日期</th>
						<th bgcolor="#ffffff">预订入住结束日期</th>
						<th bgcolor="#ffffff">操作</th>
					</tr>
					<c:forEach items="${cartList}" var="cart">
						<tr>
							<td bgcolor="#ffffff" align="center" style="width: 300px;"><a
								href="index/roomsdetail.action?id=${cart.roomsid }" target="_blank"><img style="width: 80px; height: 80px;"
									src="${cart.image }" border="0" title="${cart.roomsno }" /> </a> <br /> <a
								href="index/roomsdetail.action?id=${cart.roomsid }" target="_blank" class="f6">${cart.roomsno }</a></td>
							<td align="center" bgcolor="#ffffff">￥${cart.price }元</td>
							<td align="center" bgcolor="#ffffff">${cart.addtime }</td>
							<td align="center" bgcolor="#ffffff">${cart.begindate }</td>
							<td align="center" bgcolor="#ffffff">${cart.enddate }</td>
							<td align="center" bgcolor="#ffffff"><a
								href="javascript:if (confirm('您确实要移出客房预订吗？')) location.href='<%=basePath%>index/deletecart.action?id=${cart.cartid}'; "
								class="f6">移除</a></td>
						</tr>
					</c:forEach>
				</table>


				<table width="99%" align="center" border="0" cellpadding="5" cellspacing="0" bgcolor="#dddddd">
					<tr>
						<td bgcolor="#ffffff"><a href="index.jsp"><img src="themes/xecmoban_haier2015/images/continue.gif"
								alt="continue" /> </a></td>
						<td bgcolor="#ffffff" align="right"><a href="index/checkout.action"><img
								src="themes/xecmoban_haier2015/images/checkout.gif" alt="checkout" /> </a></td>
					</tr>
				</table>
			</form>
		</div>
		<div class="blank"></div>

		<div class="blank5"></div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
