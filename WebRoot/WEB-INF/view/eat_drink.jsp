<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
 
  <link rel="stylesheet" href="assets/css/amazeui.css"/>
  <link rel="stylesheet" href="assets/css/style1.css"/>
  <link rel="stylesheet" href="assets/css/style.css"/>
  <style type="text/css">
   
  </style>
</head>

<body data-type="tourist_index">
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo" >
		  <img class=" logo" src="assets/img/logo.jpg" ></img>
		  
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <li ><a href="AmusementCtrl/toTouristAmusementView" >乐园城信息总览</a></li>
      <li ><a href="FacilityCtrl/toTouristFacility">游乐项目信息 </a></li>
      <li class="hw-menu-active"><a href="CateringCtrl/toTouristCateringView">餐饮服务</a></li>
      <li><a href="LoginCtrl/toTourist_map">导览地图</a></li>
      <li><a href="LoginCtrl/toLogin">登录&注册</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>

	<div class="gray-li" style="margin-top: 80px;">
	<div class="customer-case part-all " >
		<div class="part-title">
			
			<i class=" am-icon-briefcase part-title-i"></i>
			<span class="part-title-span">吃吃喝喝</span>
			<div class="customer-case part-all " >
                    <form class="tpl-header-search-form" action="javascript:;" style="center">
                        <button class="tpl-header-search-btn am-icon-search" id="searchBtn" onclick="search();"></button>
                        <c:set var="name" value="${business_name}"></c:set>
                        <input class="tpl-header-search-box" type="text" placeholder="搜索餐饮名称关键字..." id="searchText"
                        <c:if test="${!empty business_name}">value=" ${business_name}"</c:if>>
                    </form>
                </div>
		</div>
		
		
                
   
	
    <div class="am-container-1">
	 <ul data-am-widget="gallery" class="am-gallery am-avg-sm-1
  am-avg-md-3 am-avg-lg-4 am-gallery-bordered customer-case-ul" data-am-gallery="{  }" >
  	<c:forEach var="item" items="${list}" varStatus="status">
      <li>
        <div class="am-gallery-item">
           
            	<div class="customer-case-img">
              <img class="photo1"  style="width:274.5px;height:274.5;max-height: 274.5px;max-width: 274.5px; min-width:274.5px;" src="${item.license_img }" />
             </div>
                <h3 class="am-gallery-title">${item.business_name}</h3>
                <div class="am-gallery-desc gallery-words">${item.range}</div>
            </a>
        </div>
      </li>
     </c:forEach>
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
<script type="text/javascript">
function search(){
	var text = $("#searchText").val();
	window.location.href="CateringCtrl/toTouristCateringWithName?business_name="+text;
}
</script>
</html>
