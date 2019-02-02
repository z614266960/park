<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html >

<head>
 	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>乐园城系统</title>
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
                    <a href="FacilityCtrl/toAddFacility" class="active">
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
                    <a href="CateringCtrl/toCateringView">
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
                        <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 发布项目 <small>游乐园设施</small></div>
                        <p class="page-header-description">在此发布您所需要的内容。</p>
                    </div>
                </div>

            </div>

            <div class="row-content am-cf">


                <div class="row">

                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">游乐项目发布</div>
                            </div>
                            <div class="widget-body am-fr">

                                <form class="am-form tpl-form-line-form" id="f">
                                    <div class="am-form-group">
                                        <label for="facilityName" class="am-u-sm-3 am-form-label">设备名称 <span class="tpl-form-line-small-title">Facility</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="facilityName" placeholder="请输入设备名称">
                                            <small>填写设备文字请控制在20个字以内。</small>
                                        </div>
                                    </div>

                        

                                    <div class="am-form-group">
                                        <label for="people" class="am-u-sm-3 am-form-label">适宜人群 <span class="tpl-form-line-small-title">Suitable population</span></label>
                                        <div class="am-u-sm-9">
                                            <select data-am-selected="{searchBox: 1}" style="display: none;" id="people">
											  <option value="0~8周岁">0~8周岁</option>
											  <option value="9~18周岁">9~18周岁</option>
											  <option value="18周岁及以上健康人群">18周岁及以上健康人群</option>
											</select>
                                        </div>
                                    </div>
                                    
                                     <div class="am-form-group">
                                        <label for="open_day" class="am-u-sm-3 am-form-label">开放日期 <span class="tpl-form-line-small-title">Open day</span></label>
                                        <div class="am-u-sm-9">
                                            <select data-am-selected="{searchBox: 1}" style="display: none;" id="open_day">
                                              <option value="0">周日</option>
											  <option value="1">周一</option>
											  <option value="2">周二</option>
											  <option value="3">周三</option>
											  <option value="4">周四</option>
											  <option value="5">周五</option>
											  <option value="6">周六</option>
											</select>
                                        </div>
                                    </div>
                                    
                                     <div class="am-form-group">
                                        <label for="close_day" class="am-u-sm-3 am-form-label">关闭日期 <span class="tpl-form-line-small-title">Close day</span></label>
                                        <div class="am-u-sm-9">
                                            <select data-am-selected="{searchBox: 1}" style="display: none;" id="close_day">
                                              <option value="0">周日</option>
											  <option value="1">周一</option>
											  <option value="2">周二</option>
											  <option value="3">周三</option>
											  <option value="4">周四</option>
											  <option value="5">周五</option>
											  <option value="6">周六</option>
											</select>
                                        </div>
                                    </div>
									<div class="am-form-group">
                                        <label for="open_time" class="am-u-sm-3 am-form-label">开始时间 <span class="tpl-form-line-small-title">Open Time</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="time" class="tpl-form-input" id="open_time">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="close_time" class="am-u-sm-3 am-form-label">关闭时间 <span class="tpl-form-line-small-title">Close Time</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="time" class="tpl-form-input" id="close_time">
                                        </div>
                                    </div>
                                    <script type="text/javascript">
	                                    function setInitTime(){//设置初始时间
	                                    	var open_time_input = document.getElementById("open_time");
	                                    	var close_time_input = document.getElementById("close_time");
	                                    	open_time_input.value = "09:00";
	                                    	close_time_input.value = "22:00";
	                                    }
	                                    setInitTime();
                                    </script>
                                    
                                    
                                    
                                    <div class="am-form-group">
                                        <label for="user-weibo" class="am-u-sm-3 am-form-label">游乐设备图片 <span class="tpl-form-line-small-title">license_img</span></label>
                                        <div class="am-u-sm-9">
                                            <div class="am-form-group am-form-file">
                                                <div class="tpl-form-file-img">
                                                    <img src="" alt="">
                                                    <!-- assets/img/a5.png -->
                                                </div>
                                                <button type="button" class="am-btn am-btn-danger am-btn-sm">
    												<i class="am-icon-cloud-upload"></i> 上传游乐设备图片</button>
                                                <input id="file" type="file" name="file" multiple="">
                                            </div>

                                        </div>
                                    </div>
                                    
                                    
                                    
                                    

                                    <div class="am-form-group">
                                        <label for="notice" class="am-u-sm-3 am-form-label">注意事项<span class="tpl-form-line-small-title">notice</span></label>
                                        <div class="am-u-sm-9">
                                            <textarea class="" rows="10"  placeholder="请输入注意事项" id="notice"></textarea>
                                        </div>
                                    </div>

                                    

                                    <div class="am-form-group">
                                        <label for="information" class="am-u-sm-3 am-form-label">详细信息</label>
                                        <div class="am-u-sm-9">
                                            <textarea class="" rows="10" id="information" placeholder="请输入详细信息" ></textarea>
                                        </div>
                                    </div>
                                   

                                    <div class="am-form-group">
                                        <div class="am-u-sm-9 am-u-sm-push-3">
                                            <button type="button" id="submitBtn" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                

            </div>
        </div>
    </div>
    </div>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/amazeui.datatables.min.js"></script>
    <script src="assets/js/dataTables.responsive.min.js"></script>
    <script src="assets/js/app.js"></script>
    <script src="assets/js/ajaxfileupload.js"></script>
	<script type="text/javascript">
	$("#submitBtn").click(function(){
		var facilityName = $("#facilityName").val();
		var people = $("#people").val();
		var open_day = $("#open_day").val();
		var close_day = $("#close_day").val();
		var open_time = $("#open_time").val();
		var close_time = $("#close_time").val();
		var notice = $("#notice").val();
		var information = $("#information").val();
		if(facilityName==null||facilityName==""){
			alert("请输入名称");return;
		}
		//TODO 以后这里加上非空校验,图片和区域也没写
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
				$.ajax({
					url:"FacilityCtrl/addFacility",
		    		type:"post",
		    		data:{
		    			"name":facilityName,
		    			"people":people,
		    			"open_day":open_day,
		    			"close_day":close_day,
		    			"open_time":open_time,
		    			"close_time":close_time,
		    			"information":information,
		    			"facility_img_path":fileRealPath,
		    			"notice":notice
		    		},
		    		success:function(result){
		    			if(result=="ok"){
		    				alert("添加成功");
		    				window.location.href="FacilityCtrl/toAddFacility";
		    			}
		    		}
				});
			},
			error : function(data){
				
	        }
		});
	});
	</script>
</body>

</html>