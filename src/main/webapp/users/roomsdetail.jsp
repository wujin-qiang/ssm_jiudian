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
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href=".">首页</a>
			<code> &gt; </code>
			<a href="index/rooms.action">全部客房</a>
			<code> &gt; </code>
			<a href="index/roomscate.action?id=${rooms.cateid }">${rooms.catename }</a>
			<code> &gt; </code>
			${rooms.roomsno }
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

			<div id="goodsInfo" class="clearfix">
				<div class="imgInfo">
					<img src="${rooms.image}" alt="${rooms.roomsno }" width="360px;" height="360px" />
					<div class="blank5"></div>
					<div class="blank"></div>
				</div>
				<div class="textInfo">
					<form action="index/addcart.action" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY">
						<h1 class="clearfix">${rooms.roomsno }</h1>
						<ul class="ul2 clearfix">
							<li class="clearfix" style="width: 100%">
								<dd>
									<strong>价格：</strong><font class="shop" id="ECS_SHOPPRICE">￥${rooms.price }元</font>
								</dd>
							</li>
							<li class="clearfix" style="width: 100%">
								<dd>
									<strong>房间类型：</strong><a href="index/roomscate.action?id=${rooms.cateid }">${rooms.catename }</a>
								</dd>
							</li>
							<li class="clearfix" style="width: 100%">
								<dd>
									<strong>客房设备111：</strong>${rooms.shebei}
								</dd>
							</li>
							<li class="clearfix" style="width: 100%">
								<dd>
									<strong>朝向：</strong>${rooms.chaoxiang}
								</dd>
							</li>
							<li class="clearfix" style="width: 100%">
								<dd>
									<strong>面积：</strong>${rooms.mianji}
								</dd>
							</li>
							<li class="clearfix" style="width: 100%">
								<label class="control-label">开始时间</label>
								<input type="date" name="begindate" value="2015-09-24" min="2021-09-16" max="2099-09-26"/>
								<label class="control-label">结束时间</label>
								<input type="date" name="enddate"  value="2015-09-24" min="2021-09-16" max="2099-09-26"/>
							</li>
						</ul>
						<ul class="bnt_ul">
							<li class="padd"><input type="hidden" name="roomsid" value="${rooms.roomsid }" /> <input type="hidden"
								name="price" value="${rooms.price }" /> <input type="image" src="themes/xecmoban_haier2015/images/goumai2.png" /></li>
						</ul>
					</form>
				</div>
			</div>


			<div class="box">
				<div style="padding: 0 0px;">
					<div id="com_b" class="history clearfix">
						<h2>房间描述</h2>
					</div>
				</div>
				<div class="box_1">
					<div id="com_v" class="  " style="padding: 6px;"></div>
					<div id="com_h">
						<blockquote>${rooms.contents}</blockquote>
					</div>
				</div>
			</div>
			<div class="blank"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
