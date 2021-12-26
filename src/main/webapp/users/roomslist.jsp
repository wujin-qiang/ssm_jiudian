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
			当前位置: <a href="index.jsp">首页</a>
			<code> &gt; </code>
			酒店客房
		</div>
	</div>
	<div class="blank"></div>
	<div class="block clearfix">
		<div class="AreaL">
			<div id="category_tree">
				<div class="tit">所有房间分类</div>
				<dl class="clearfix" style="overflow: hidden;">
					<c:forEach items="${cateList}" var="cate">
						<div class="box1 cate" id="cate">
							<h1 style="border-top: none">
								<a href="index/roomscate.action?id=${cate.cateid }" class="  f_l">${cate.catename }</a>
							</h1>
						</div>
						<div style="clear: both"></div>
					</c:forEach>
				</dl>
			</div>
			<div class="blank"></div>
			<div id="category_tree">
				<div class="tit">所有餐饮分类</div>
				<dl class="clearfix" style="overflow: hidden;">
					<c:forEach items="${fcateList}" var="cate">
						<div class="box1 cate" id="cate">
							<h1 style="border-top: none">
								<a href="index/foodscate.action?id=${cate.fcateid }" class="  f_l">${cate.fcatename }</a>
							</h1>
						</div>
						<div style="clear: both"></div>
					</c:forEach>
				</dl>
			</div>
			<div class="blank"></div>
			<div class="box" id='history_div'>
				<div class="box_1">
					<h3>
						<span>热门食品</span>
					</h3>
					<div class="boxCenterList clearfix" id='history_list'>
						<c:forEach items="${hotList}" var="foods">
							<ul class="clearfix">
								<li class="goodsimg"><a href="index/foodsdetail.action?id=${foods.foodsid }"><img src="${foods.image }"
										alt="${foods.foodsname }" class="B_blue" /> </a></li>
								<li><a href="index/foodsdetail.action?id=${foods.foodsid }" title="${foods.foodsname }">${foods.foodsname }</a>
									<br /> 价格： <font class="f1">￥${foods.price }元</font></li>
							</ul>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="blank5"></div>
		</div>
		<div class="AreaR">
			<div class="box">
				<div class="box_1">
					<h3>
						<span>酒店客房</span>
					</h3>
					<div class="clearfix goodsBox" style="border: none;">
						<c:forEach items="${roomsList}" var="rooms">
							<div class="goodsItem" style="padding: 10px 3px 15px 2px;">
								<a href="index/roomsdetail.action?id=${rooms.roomsid }"><img src="${rooms.image }" alt="${rooms.roomsno }"
									class="goodsimg" /> </a> <br />
								<p class="f1">
									<a href="index/roomsdetail.action?id=${rooms.roomsid }" title="${rooms.roomsno }">${rooms.roomsno }</a>
								</p>
								<p class="value bigsize">
									价格<font class="f1"> ￥${rooms.price }元 </font>
								</p>
							</div>
						</c:forEach>
					</div>
					<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
						<tr>
							<td align="center" bgcolor="#ffffff">${html}</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="blank5"></div>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
