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

<body data-type="widgets">
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
                    <a href="AmusementCtrl/toAmusementView">
                        <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="FacilityCtrl/toAddFacility">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 添加游乐项目
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="FacilityCtrl/toFacilityView"  >
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 管理游乐项目
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="CateringCtrl/toaddCatering">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 添加餐饮信息
                    </a>
                </li>
                
                <li class="sidebar-nav-link">
                    <a href="CateringCtrl/toCateringView">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 管理餐饮信息
                    </a>
                </li>
                  <li class="sidebar-nav-link">
                    <a href="MapCtrl/toMap">
                        <i class="am-icon-edit sidebar-nav-link-logo" class="active"></i> 管理地址信息
                    </a>
                </li>
                

            </ul>
        </div>



        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">

            <div class="container-fluid am-cf">
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 管理 <small>游乐园信息</small></div>
                        <p class="page-header-description">在此修改游乐园信息</p>
                    </div>
                </div>
			
            </div>

            <div class="row-content am-cf">
				
                <div class="row">
                <c:set var="item" value="${amusement_information }"/>
				<form class="am-form tpl-form-line-form" amusement_id="${item.amusement_Id }" id="f">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-body  widget-body-lg am-fr">

                               <article data-am-widget="paragraph" class="am-paragraph am-paragraph-default" data-am-paragraph="{ tableScrollable: true, pureview: true }">

      								<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
				                        <div class="widget am-cf">
				                            <div class="widget-body am-fr">
													<div class="am-form-group">
				                                        <label for="introduction" class="am-u-sm-3 am-form-label">简介 <span class="tpl-form-line-small-title">Introduction</span></label>
				                                        <div class="am-u-sm-9">
				                                            <input type="text" class="tpl-form-input" id="introduction" placeholder="请输入游乐园简介" value="${item.introduction }" disabled="disabled"> 
				                                            <small>请尽量简介一点，不要超过100个字。</small>
				                                        </div>
				                                    </div>
				                                    <div class="am-form-group">
				                                        <label for="address" class="am-u-sm-3 am-form-label">地址 <span class="tpl-form-line-small-title">Address</span></label>
				                                        <div class="am-u-sm-9">
				                                            <input type="text" class="tpl-form-input" id="address" placeholder="请输入游乐园地址" value="${item.address }" disabled="disabled">
				                                            <small>描述地址信息即可，具体经纬度请在地址信息内更改。</small>
				                                        </div>
				                                    </div>
				                               		
				                               		<div class="am-form-group">
				                                        <label for="business_hours" class="am-u-sm-3 am-form-label">营业时间 <span class="tpl-form-line-small-title">Business_hours</span></label>
				                                        <div class="am-u-sm-9">
				                                            <input type="text" class="tpl-form-input" id="business_hours" placeholder="请输入游乐园营业时间" value="${item.business_hours }" disabled="disabled">
				                                        </div>
				                                    </div>
				                                    
				                                    <div class="am-form-group">
				                                        <label for="area_covered" class="am-u-sm-3 am-form-label">占地面积<span class="tpl-form-line-small-title">Area_covered</span></label>
				                                        <div class="am-u-sm-9">
				                                            <input type="text" class="tpl-form-input" id="area_covered" placeholder="请输入占地面积" value="${item.area_covered }" disabled="disabled">
				                                        </div>
				                                    </div>
				                                     <div class="am-form-group">
				                                        <label for="user-weibo" class="am-u-sm-3 am-form-label">首页封面图<span class="tpl-form-line-small-title">Images</span></label>
				                                        <div class="am-u-sm-9">
				                                            <div class="am-form-group am-form-file">
				                                                <div class="tpl-form-file-img">
				                                                	<img alt="" src="
				                                                	<c:if test="${item.amusement_img != ''}">
				                                                		${item.amusement_img }
				                                                	</c:if>">
				                                                    <!-- <img src=http://s.amazeui.org/media/i/demos/bing-1.jpg  > -->
				                                                    <!-- assets/img/a5.png -->
				                                                </div>
				                                                <button type="button" class="am-btn am-btn-danger am-btn-sm">
				    												<i class="am-icon-cloud-upload"></i> 修改封面图</button>
				                                                <input name="file" type="file" multiple="" disabled="true" class="imgInput">
				                                            </div>
				
				                                        </div>
				                                    </div>
				                                 <div class="am-form-group">
                                        			<div class="am-u-sm-9 am-u-sm-push-3">
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
		$(t).next().show();
		$(t).next().next().show();
		$(t).hide();
	}
	function disrevise(t){
		var form = $(t).parents("form");
		form.find(":enabled").attr("disabled","disabled");
		$(t).prev().show();$(t).prev().attr("disabled",false);
		$(t).attr("disabled",false);$(t).hide();
		$(t).next().hide();$(t).next().attr("disabled",false);
	}
	function save(t){
		var form = $(t).parents("form");
		var groups = form.find(".am-form-group");//想获取9个，共有11个，注意筛选
		
		//获取信息
		var id = form.attr("amusement_id");
		var introduction = $(groups.get(0)).find("input:first").val();
		var address = $(groups.get(1)).find("input:first").val();
		var business_hours = $(groups.get(2)).find("input:first").val();
		var area_covered = $(groups.get(3)).find("input:first").val();
		
		var form = new FormData(document.getElementById("f"));
		var fileRealPath = "";
		$.ajax({
			url : "LoginCtrl/uploadFile",
			data : form,
			type : 'post',
			processData:false,
	        contentType:false,
	        success : function(data){
	        	fileRealPath = data;
	        	if(id==""||id==null){
	    			$.ajax({
	    				url:"AmusementCtrl/addAmusement",
	    	    		type:"post",
	    	    		data:{
	    	    			"introduction":introduction,
	    	    			"address":address,
	    	    			"business_hours":business_hours,
	    	    			"area_covered":area_covered,
	    	    			"amusement_img":fileRealPath
	    	    		},
	    	    		success:function(result){
	    	    			if(result=="ok"){
	    	    				alert("添加成功");
	    	    				window.location.href="AmusementCtrl/toAmusementView";
	    	    			}
	    	    		}
	    			});
	    		}else{
	    			$.ajax({
	    				url:"AmusementCtrl/updateAmusement",
	    	    		type:"post",
	    	    		data:{
	    	    			"id":id,
	    	    			"introduction":introduction,
	    	    			"address":address,
	    	    			"business_hours":business_hours,
	    	    			"area_covered":area_covered,
	    	    			"amusement_img":fileRealPath
	    	    		},
	    	    		success:function(result){
	    	    			if(result=="ok"){
	    	    				alert("修改成功");
	    	    				window.location.href="AmusementCtrl/toAmusementView";
	    	    			}
	    	    		}
	    			});
	    		}
	        }
		});
	}
	</script>
</body>

</html>
