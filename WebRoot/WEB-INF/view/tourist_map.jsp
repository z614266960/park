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
  
  <link rel="alternate icon" type="assets/img/hengwang-1.png" href="assets/img/hengwang-1.png">
  <link rel="stylesheet" href="assets/css/amazeui.css"/>
  <link rel="stylesheet" href="assets/css/style1.css"/>
</head>







<body data-type="tourist_index">
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo" style="height=80px">
		  <img class=" logo" src="assets/img/logo.jpg"></img>
		  
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <li ><a href="AmusementCtrl/toTouristAmusementView">乐园城信息总览</a></li>
      <li ><a href="FacilityCtrl/toTouristFacility">游乐项目信息 </a></li>
      <li ><a href="CateringCtrl/toTouristCateringView">餐饮服务</a></li>
      <li class="hw-menu-active"><a href="LoginCtrl/toTourist_map">导览地图</a></li>
      <li><a href="LoginCtrl/toLogin">登录&注册</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>
<div id="baidu_map" style="width: 100%;height: 500px;overflow: hidden;margin:0;margin-top: 80px;"></div>
<div id="r-result"></div>

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
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=oYrhKovZtpgV2bcr97lx55VaNuwIlL8x"></script>
<script type="text/javascript">
var longitude;
var latitude;
var city;
var slogen;
var start;
var end;
	$.ajax({
		url:"MapCtrl/getMapInfo",
		async:false,//是否异步，这里是同步
		type:"post",
		dataType: 'json',
		success:function(data){
			longitude = data.longitude;
			latitude = data.latitude;
			city = data.city;
			slogen = data.slogen;
			start = data.start;
			end = data.end;
		},
		error:function(data){ 
			alert("fail"); 
	    }
	});
	// 百度地图API功能
	var map = new BMap.Map("baidu_map");    // 创建Map实例
	var point = new BMap.Point(longitude, latitude);
	map.centerAndZoom(point, 17);  // 初始化地图,设置中心点坐标和地图级别
	//添加地图类型控件
	map.addControl(new BMap.MapTypeControl({
		mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));	  
	map.setCurrentCity(city);          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	
	var marker = new BMap.Marker(point);
	map.addOverlay(marker); 
	
	var opts = {
		position : point,    // 指定文本标注所在的地理位置
		offset   : new BMap.Size(30, -30)    //设置文本偏移量
	}
	var label = new BMap.Label(slogen, opts);  // 创建文本标注对象
	label.setStyle({
		color : "black",
		fontSize : "12px",
		height : "20px",
		lineHeight : "20px",
		fontFamily:"微软雅黑"
	});
	map.addOverlay(label);
	var walking = new BMap.WalkingRoute(map, {renderOptions: {map: map, panel: "r-result", autoViewport: true}});
	walking.search(start, end);
	
</script>
</html>
