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
                    <a href="FacilityCtrl/toFacilityView"class="active">
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
                        <i class="am-icon-edit sidebar-nav-link-logo"></i> 管理地址信息
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="PassCtrl/toAddPassCard">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 添加PassCard信息
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="PassCtrl/toPassCard">
                        <i class="am-icon-edit sidebar-nav-link-logo"></i> 管理PassCard信息
                    </a>
                </li>
               

            </ul>
        </div>



        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">

            <div class="container-fluid am-cf">
                <div class="row" >
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span>管理<small>游乐园设施</small> </div>
                        <p class="page-header-description">在此管理您所需要的内容。</p>
                    </div>
                 
              </div>
              
              <div class="am-fl tpl-header-search" >
                    <form class="tpl-header-search-form" action="javascript:;">
                        <button class="tpl-header-search-btn am-icon-search" id="searchBtn" onclick="search()"></button>
                        <c:set var="name" value="${name}"></c:set>
                        <input class="tpl-header-search-box" type="text" placeholder="搜索设备名称关键字..." id="searchText"
                        <c:if test="${!empty name}">value="${name}"</c:if>>
                        
                    </form>
                </div>

            </div>

            <div class="row-content am-cf">
				
				<c:forEach var="item" items="${list}" varStatus="status">
                <div class="row">
				<form class="am-form tpl-form-line-form" facility_id="${item.id }" id="${item.id }">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-body  widget-body-lg am-fr">

                               <article data-am-widget="paragraph" class="am-paragraph am-paragraph-default" data-am-paragraph="{ tableScrollable: true, pureview: true }">

      								<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
				                        <div class="widget am-cf">
				                            <div class="widget-body am-fr">
													<div class="am-form-group">
				                                        <label for="facilityName" class="am-u-sm-3 am-form-label">设备名称 <span class="tpl-form-line-small-title">Facility</span></label>
				                                        <div class="am-u-sm-9">
				                                            <input type="text" class="tpl-form-input" value="${item.name}" disabled="disabled">
				                                        </div>
				                                    </div>
				                               
				                                    <div class="am-form-group">
				                                        <label for="people" class="am-u-sm-3 am-form-label">适宜人群 <span class="tpl-form-line-small-title">Suitable population</span></label>
				                                        <div class="am-u-sm-9">
				                                            <select disabled="disabled" data-am-selected="{searchBox: 1}" style="display: none;" id="people">
															  <option <c:if test="${item.people == '0~8周岁'}">selected</c:if> value="0~8周岁">0~8周岁</option>
															  <option <c:if test="${item.people == '9~18周岁'}">selected</c:if> value="9~18周岁">9~18周岁</option>
															  <option <c:if test="${item.people == '18周岁及以上健康人群'}">selected</c:if>value="18周岁及以上健康人群">18周岁及以上健康人群</option>
															</select>
				                                        </div>
				                                    </div>
				                                    
				                                     <div class="am-form-group">
				                                        <label for="open_day" class="am-u-sm-3 am-form-label">开放日期 <span class="tpl-form-line-small-title">Open day</span></label>
				                                        <div class="am-u-sm-9">
				                                            <select disabled="disabled" data-am-selected="{searchBox: 1}" style="display: none;" id="open_day">
				                                              <option <c:if test="${item.open_day == '0'}">selected</c:if> value="0">周日</option>
															  <option <c:if test="${item.open_day == '1'}">selected</c:if> value="1">周一</option>
															  <option <c:if test="${item.open_day == '2'}">selected</c:if> value="2">周二</option>
															  <option <c:if test="${item.open_day == '3'}">selected</c:if> value="3">周三</option>
															  <option <c:if test="${item.open_day == '4'}">selected</c:if> value="4">周四</option>
															  <option <c:if test="${item.open_day == '5'}">selected</c:if> value="5">周五</option>
															  <option <c:if test="${item.open_day == '6'}">selected</c:if> value="6">周六</option>
															</select>
				                                        </div>
				                                    </div>
				                                    
				                                     <div class="am-form-group">
				                                        <label for="close_day" class="am-u-sm-3 am-form-label">关闭日期 <span class="tpl-form-line-small-title">Close day</span></label>
				                                        <div class="am-u-sm-9">
				                                            <select disabled="disabled" data-am-selected="{searchBox: 1}" style="display: none;" id="close_day" >
				                                             <option <c:if test="${item.close_day == '0'}">selected</c:if> value="0">周日</option>
															  <option <c:if test="${item.close_day == '1'}">selected</c:if> value="1">周一</option>
															  <option <c:if test="${item.close_day == '2'}">selected</c:if> value="2">周二</option>
															  <option <c:if test="${item.close_day == '3'}">selected</c:if> value="3">周三</option>
															  <option <c:if test="${item.close_day == '4'}">selected</c:if> value="4">周四</option>
															  <option <c:if test="${item.close_day == '5'}">selected</c:if> value="5">周五</option>
															  <option <c:if test="${item.close_day == '6'}">selected</c:if> value="6">周六</option>
															</select>
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
				                                        <label for="notice" class="am-u-sm-3 am-form-label">注意事项<span class="tpl-form-line-small-title">notice</span></label>
				                                        <div class="am-u-sm-9">
				                                            <textarea disabled="disabled" class="" rows="10"  placeholder="请输入注意事项" id="notice" >${item.notice }</textarea>
				                                        </div>
				                                    </div>
				
				                                    <div class="am-form-group">
				                                        <label for="information" class="am-u-sm-3 am-form-label">详细信息</label>
				                                        <div class="am-u-sm-9">
				                                            <textarea disabled="disabled" class="" rows="10" id="information" placeholder="请输入详细信息">${item.information }</textarea>
				                                        </div>
				                                    </div>
				                                    <div class="am-form-group">
				                                        <label for="user-weibo" class="am-u-sm-3 am-form-label">游乐设备图片 <span class="tpl-form-line-small-title">Images</span></label>
				                                        <div class="am-u-sm-9">
				                                            <div class="am-form-group am-form-file">
				                                                <div class="tpl-form-file-img">
				                                                	<img alt="" src="
				                                                	<c:if test="${item.facility_img != ''}">
				                                                		${item.facility_img }
				                                                	</c:if>">
				                                                    <!-- <img src=http://s.amazeui.org/media/i/demos/bing-1.jpg  > -->
				                                                    <!-- assets/img/a5.png -->
				                                                </div>
				                                                <button type="button" class="am-btn am-btn-danger am-btn-sm">
				    												<i class="am-icon-cloud-upload"></i> 修改游乐设备图片</button>
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
		var id = form.attr("facility_id");
		var name = $(groups.get(0)).find("input:first").val();
		var people = $(groups.get(1)).find("select").val();
		var open_day = $(groups.get(2)).find("select").val();
		var close_day = $(groups.get(3)).find("select").val();
		var open_time = $(groups.get(4)).find("input:first").val();
		var close_time = $(groups.get(5)).find("input:first").val();
		var notice = $(groups.get(6)).find("textarea:first").val();
		var information = $(groups.get(7)).find("textarea:first").val();
		var imgsrc = $(groups.get(8)).find("img:first").attr("src");
		var form = new FormData(document.getElementById(id));
		var fileRealPath = imgsrc;
		
		$.ajax({
			url : "LoginCtrl/uploadFile",
			data : form,
			type : 'post',
			processData:false,
	        contentType:false,
	        success : function(data){
	        if(data!=null&&data!=""){
	        	fileRealPath = data;
	        	}else{
	        	}
				$.ajax({
					url:"FacilityCtrl/updateFacility",
		    		type:"post",
		    		data:{
		    			"id":id,
		    			"name":name,
		    			"people":people,
		    			"open_day":open_day,
		    			"close_day":close_day,
		    			"open_time":open_time,
		    			"close_time":close_time,
		    			"information":information,
		    			"facility_img_path":fileRealPath,
		    			"notice":notice
		    		},
		    		success:function(result){//回调函数
		    			if(result=="ok"){
		    				alert("修改成功");
		    				window.location.href="FacilityCtrl/toFacilityView";
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
		var id = form.attr("facility_id");
		if(confirm("确认删除？")){
			$.ajax({
				url:"FacilityCtrl/deleteFacility",
	    		type:"post",
	    		data:{
	    			"id":id
	    		},
	    		success:function(result){
	    			if(result=="ok"){
	    				alert("删除成功");
	    				window.location.href="FacilityCtrl/toFacilityView";
	    			}
	    		}
			});
		}
	}
	
	function search(){
		var text = $("#searchText").val();
		window.location.href="FacilityCtrl/toFacilityViewWithName?name="+text;
	}
	
	/* function search(){
		var text = $("#searchText").val();
		$.ajax({
			url:"FacilityCtrl/toFacilityViewWithName",
    		type:"post",
    		async:false,
    		data:{
    			"name":text
    		},
    		success:function(result){
    			window.location.reload();
    		}
		});
	} */
	</script>
</body>

</html>
