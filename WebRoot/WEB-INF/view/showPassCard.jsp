<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>乐园城系统</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />


<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet" href="assets/css/style1.css" />
<link rel="stylesheet" href="assets/css/style.css" />

<style type="text/css">
.tpl-header-search-box, .tpl-header-search-btn {
	transition: all 0.4s ease-in-out;
	color: #848c90;
	background: none;
	border: none;
	outline: none;
}

.tpl-header-search-box {
	font-size: 14px;
}

.tpl-header-search-box:hover, .tpl-header-search-box:active {
	color: #fff;
}

.tpl-header-search-btn {
	font-size: 15px;
}

.tpl-header-search-btn:hover, .tpl-header-search-btn:active {
	color: #fff;
}
</style>
</head>

<body data-type="tourist_index">
	<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
			<img class=" logo" src="assets/img/logo.jpg"></img>

		</div>
		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#doc-topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse right"
			id="doc-topbar-collapse">


			<div class=" am-topbar-left am-form-inline am-topbar-right"
				role="search">
				<ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
					<li><a href="AmusementCtrl/toTouristAmusementView">乐园城信息总览</a></li>
					<li class="hw-menu-active"><a href="PassCtrl/toShowPassCard">PassCard信息</a></li>
					<li><a href="FacilityCtrl/toTouristFacility">游乐项目信息 </a></li>
					<li><a href="CateringCtrl/toTouristCateringView">餐饮服务</a></li>
					<li><a href="LoginCtrl/toTourist_map">导览地图</a></li>
					<li><a href="LoginCtrl/toLogin">退出登录</a></li>

				</ul>
			</div>

		</div>
	</div>
	</header>
	<div class="gray-li" style="margin-top: 80px;">
		<div class="customer-case part-all ">
			<div class="part-title">

				<i class=" am-icon-briefcase part-title-i"></i> <span
					class="part-title-span">游乐PassCard信息</span>
			</div>
			<div>
				<ul class=" product-show-ul">

					<li>
						<div class="product-content">

							<table class="am-table am-table-striped am-table-hover">
								<thead>
									<tr>
										<th>方案序号</th>
										<th>第一站</th>
										<th>第二站</th>
										<th>第三站</th>
										<th>第四站</th>
										<th>第五站</th>
										<th>第六站</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${list}" varStatus="status">
										<tr>
											<td>${item.id }</td>
											<td>${item.pc1 }</td>
											<td>${item.pc2 }</td>
											<td>${item.pc3 }</td>
											<td>${item.pc4 }</td>
											<td>${item.pc5 }</td>
											<td>${item.pc6 }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="clear"></div>
						</div>
					</li>
				</ul>
			</div>
</body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/scroll.js"></script>
</html>
