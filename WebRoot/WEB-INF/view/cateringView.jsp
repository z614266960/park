<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>
	<base href="<%=basePath%>">
    
    <title>乐园城系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script src="assets/js/echarts.min.js"></script>
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="assets/css/app.css">
    <script src="assets/js/jquery.min.js"></script>

</head>

<body data-type="index">
    <script src="assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
        <header>
            <!-- logo -->
            <div class="am-fl tpl-header-logo">
                <a href="javascript:;"><img src="assets/img/logo.png" alt=""></a>
            </div>
            <!-- 右侧内容 -->
            <div class="tpl-header-fluid">
               
                
                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                         <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span><%=session.getAttribute("username") %></span> </a>
                        </li>

                        <!-- 退出 -->
                        <li class="am-text-sm">
                            <a href="LoginCtrl/toLogin">
                                <span class="am-icon-sign-out"></span> 退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </header>
        
        <!-- 侧边导航栏 -->
        <div class="left-sidebar">
            
		
              <!-- 菜单 -->
            <ul class="sidebar-nav">
                <li class="sidebar-nav-link">
                    <a href="AmusementCtrl/toAmusementView" >
                        <i class="am-icon-home sidebar-nav-link-logo"></i>管理乐园城信息
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="FacilityCtrl/toAddFacility">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 添加游乐项目
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="FacilityCtrl/toFacilityView">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 管理游乐项目
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="CateringCtrl/toaddCatering">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 添加餐饮信息
                    </a>
                </li>
                
                <li class="sidebar-nav-link">
                    <a href="CateringCtrl/toCateringView"class="active">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 管理餐饮信息
                    </a>
                </li>
                
                <li class="sidebar-nav-link">
                    <a href="MapCtrl/toMap">
                        <i class="am-icon-edit sidebar-nav-link-logo"></i> 管理地址信息
                    </a>
                </li>
                
               

            </ul>
        </div>


        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">

            <div class="container-fluid am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 管理<small>餐饮业务</small></div>
                        <p class="page-header-description">在此管理您所需要的内容。</p>
                    </div>
                </div>
                
                
                <div class="am-fl tpl-header-search" >
                    <form class="tpl-header-search-form" action="javascript:;">
                        <button class="tpl-header-search-btn am-icon-search" id="searchBtn" onclick="search()"></button>
                        <c:set var="business_name" value="${business_name}"></c:set>
                        <input class="tpl-header-search-box" type="text" placeholder="搜索餐饮名称关键字..." id="searchText"
                        <c:if test="${!empty business_name}">value="${business_name}"</c:if>>
                        
                    </form>
                </div>

            </div>
 			<div class="row-content am-cf">
				
				<c:forEach var="item" items="${list}" varStatus="status">
                <div class="row">
				<form class="am-form tpl-form-line-form" business_id="${item.business_id }" id="${item.business_id }">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-body  widget-body-lg am-fr">

                               <article data-am-widget="paragraph" class="am-paragraph am-paragraph-default" data-am-paragraph="{ tableScrollable: true, pureview: true }">

      								<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
				                        <div class="widget am-cf">
				                            <div class="widget-body am-fr">
													<div class="am-form-group">
				                                        <label for="business_name" class="am-u-sm-3 am-form-label">餐饮名称<span class="tpl-form-line-small-title">business_name</span></label>
				                                        <div class="am-u-sm-9">
				                                            <input type="text" class="tpl-form-input" value="${item.business_name}" disabled="disabled">
				                                        </div>
				                                    </div>
				                                    
				                                   <div class="am-form-group">
				                                        <label for="owner" class="am-u-sm-3 am-form-label">业主姓名</label>
				                                        <div class="am-u-sm-9">
				                                           <input type="text" class="tpl-form-input" value="${item.owner}" disabled="disabled">
				                                        </div>
				                                    </div>
				                                    
				                                    <div class="am-form-group">
				                                        <label for="people" class="am-u-sm-3 am-form-label">经营类型 <span class="tpl-form-line-small-title">type</span></label>
				                                        <div class="am-u-sm-9">
				                                            <select disabled="disabled" data-am-selected="{searchBox: 1}" style="display: none;"id="type">
															  <option <c:if test="${item.type == '甜品'}">selected</c:if> value="甜品">甜品</option>
															  <option <c:if test="${item.type == '饮料'}">selected</c:if> value="饮料">饮料</option>
															  <option <c:if test="${item.type == '中餐'}">selected</c:if> value="中餐">中餐</option>
															   <option <c:if test="${item.type == '西餐'}">selected</c:if> value="西餐">西餐</option>
															  <option <c:if test="${item.type == '便利店'}">selected</c:if> value="便利店">便利店</option>
															 
															</select>
				                                        </div>
				                                    </div>
				                                    
				                                    <div class="am-form-group">
				                                        <label for="range" class="am-u-sm-3 am-form-label">营业范围<span class="tpl-form-line-small-title">range</span></label>
				                                        <div class="am-u-sm-9">
				                                            <textarea disabled="disabled" class="" rows="10"  placeholder="请介绍营业范围" id="range" >${item.range }</textarea>
				                                        </div>
				                                    </div>
				                                    
				                                    
													<div class="am-form-group">
				                                        <label for="open_time" class="am-u-sm-3 am-form-label">开始时间 <span class="tpl-form-line-small-title">Open Time</span></label>
				                                        <div class="am-u-sm-9">
				                                            <input disabled="disabled" type="time" class="tpl-form-input" id="open_time" value="${item.open_time }">
				                                        </div>
				                                    </div>
				                                    <div class="am-form-group">
				                                        <label for="close_time" class="am-u-sm-3 am-form-label">关闭时间 <span class="tpl-form-line-small-title">Close Time</span></label>
				                                        <div class="am-u-sm-9">
				                                            <input disabled="disabled" type="time" class="tpl-form-input" id="close_time" value="${item.close_time }">
				                                        </div>
				                                    </div>
				                                    
				
				                                   
				                                    
				                                    <div class="am-form-group">
				                                        <label for="user-weibo" class="am-u-sm-3 am-form-label">餐饮图片<span class="tpl-form-line-small-title">Images</span></label>
				                                        <div class="am-u-sm-9">
				                                            <div class="am-form-group am-form-file">
				                                                <div class="tpl-form-file-img">
				                                                	<img alt="" src="
				                                                	<c:if test="${item.license_img != ''}">
				                                                		${item.license_img }
				                                                	</c:if>">
				                                                    <!-- <img src=http://s.amazeui.org/media/i/demos/bing-1.jpg  > -->
				                                                    <!-- assets/img/a5.png -->
				                                                </div>
				                                                <button type="button" class="am-btn am-btn-danger am-btn-sm">
				    												<i class="am-icon-cloud-upload"></i> 修改餐饮图片</button>
				                                                <input name="file" type="file" multiple="" disabled="true" class="imgInput">
				                                            </div>
				
				                                        </div>
				                                    </div>
				                                 <div class="am-form-group">
                                        			<div class="am-u-sm-9 am-u-sm-push-3">
                                        				<button type="button" class="am-btn am-btn-danger tpl-btn-bg-color-success " onclick="del(this);">删除</button>
                                            			<button type="button" class="am-btn am-btn-warning tpl-btn-bg-color-success " onclick="revise(this);">修改</button>
                                            			<button type="button" class="am-btn am-btn-primary tpl-btn-bg-color-success " onclick="disrevise(this);" style="display: none;">取消修改</button>
                                            			<button type="button" class="am-btn am-btn-success tpl-btn-bg-color-success " onclick="save(this);" style="display: none;">保存</button>
                                       				 </div>
                                   				 </div>
				                                
				                            </div>
				                        </div>
				                    </div>
				                    
  								</article>
								
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
				</c:forEach>
            </div>
        </div>
    </div>
    </div>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/amazeui.datatables.min.js"></script>
    <script src="assets/js/dataTables.responsive.min.js"></script>
    <script src="assets/js/app.js"></script>
	<script type="text/javascript">
	$(".imgInput").change(function(){
	    $(this).prev().prev().find("img:first").attr("src",URL.createObjectURL($(this)[0].files[0]));
	});
	function revise(t){
		var form = $(t).parents("form");
		form.find(":disabled").attr("disabled",false);
		$(t).prev().show();
		$(t).next().show();
		$(t).next().next().show();
		$(t).hide();
	}
	function disrevise(t){
		var form = $(t).parents("form");
		form.find(":enabled").attr("disabled","disabled");
		$(t).prev().prev().show();$(t).prev().prev().attr("disabled",false);
		$(t).prev().show();$(t).prev().attr("disabled",false);
		$(t).attr("disabled",false);$(t).hide();
		$(t).next().hide();$(t).next().attr("disabled",false);
	}
	function save(t){
		var form = $(t).parents("form");
		var groups = form.find(".am-form-group");
		
		//获取信息
		var business_id = form.attr("business_id");
		var business_name = $(groups.get(0)).find("input:first").val();
		var owner = $(groups.get(1)).find("input:first").val();
		var type = $(groups.get(2)).find("select").val();
		var range = $(groups.get(3)).find("textarea:first").val();
		var open_time = $(groups.get(4)).find("input:first").val();
		var close_time = $(groups.get(5)).find("input:first").val();
		
		var form = new FormData(document.getElementById(business_id));
		var fileRealPath = "";
		
		$.ajax({
			url : "LoginCtrl/uploadFile",
			data : form,
			type : 'post',
			processData:false,
	        contentType:false,
	        success : function(data){
	        	fileRealPath = data;
	        	
	        	$.ajax({
	    			url:"CateringCtrl/updateCatering",
	        		type:"post",
	        		data:{
	        			"business_id":business_id,
	        			"business_name":business_name,
	        			"owner":owner,
	        			"type":type,
	        			"range":range,
	        			"open_time":open_time,
	        			"close_time":close_time,
	        			"img_path":fileRealPath
	        		},
	        		success:function(result){
	        			if(result=="ok"){
	        				alert("修改成功");
	        				window.location.href="CateringCtrl/toCateringView";
	        			}
	        		}
	    		});
	        }
		});
		
	}
	function del(t){
		var form = $(t).parents("form");
		var groups = form.find(".am-form-group");
		
		//获取信息
		var id = form.attr("business_id");
		
		if(confirm("确认删除？")){
			$.ajax({
				url:"CateringCtrl/deleteCatering",
	    		type:"post",
	    		data:{
	    			"business_id":id
	    		},
	    		success:function(result){
	    			if(result=="ok"){
	    				alert("删除成功");
	    				window.location.href="CateringCtrl/toCateringView";
	    			}
	    		}
			});
		}
	}
	function search(){
		var text = $("#searchText").val();
		window.location.href="CateringCtrl/toCateringViewWithName?business_name="+text;
	}
	</script>
</body>

</html>
