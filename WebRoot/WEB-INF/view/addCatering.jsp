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
               
                <!-- 其它功能 -->
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
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 管理游乐项目
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="FacilityCtrl/toFacilityView">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 查看游乐项目
                    </a>
                </li>
                <li class="sidebar-nav-link">
                    <a href="CateringCtrl/toaddCatering" class="active">
                        <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 管理餐饮信息
                    </a>
                </li>
                
                <li class="sidebar-nav-link">
                    <a href="CateringCtrl/toCateringView">
                        <i class="am-icon-table sidebar-nav-link-logo"></i> 查询餐饮信息
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
                        <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 添加<small>餐饮业务信息</small></div>
                        <p class="page-header-description">在此发布您所需要的内容。</p>
                    </div>
                </div>

            </div>

            <div class="row-content am-cf">


                <div class="row">

                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">餐饮业务发布</div>
                            </div>
                            <div class="widget-body am-fr">

                                <form class="am-form tpl-form-line-form" id="f">
                                    <div class="am-form-group">
                                        <label for="Restaurant NAme" class="am-u-sm-3 am-form-label">餐饮名称 <span class="tpl-form-line-small-title">Restaurant NAme</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="business_name" placeholder="请输入餐饮名称">
                                            <small>填写文字请控制在20个字以内。</small>
                                        </div>
                                    </div>
                                    
                                     <div class="am-form-group">
                                        <label for="Owner" class="am-u-sm-3 am-form-label">业主姓名 <span class="tpl-form-line-small-title">Owner</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="owner" placeholder="请输入业主姓名">
                                            
                                        </div>
                                    </div>
                                    
                                     <div class="am-form-group">
                                        <label for="type" class="am-u-sm-3 am-form-label">经营类型 <span class="tpl-form-line-small-title">type</span></label>
                                        <div class="am-u-sm-9">
                                            <select data-am-selected="{searchBox: 1}" style="display: none;" id="type">
											  <option value="甜品">甜品</option>
											   <option value="饮料">饮料</option>
											    <option value="中餐">中餐</option>
											     <option value="西餐">西餐</option>
											  <option value="便利店">便利店</option>
											  
											</select>
                                        </div>
                                    </div>

                        

                                   <div class="am-form-group">
                                        <label for="range" class="am-u-sm-3 am-form-label">营业范围 <span class="tpl-form-line-small-title">Range</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="range" placeholder="请对营业内容进行描述">
                                            
                                        </div>
                                    </div>
                                    
                                    
									<div class="am-form-group">
                                        <label for="open_time" class="am-u-sm-3 am-form-label">营业时间 <span class="tpl-form-line-small-title">Open Time</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="time" class="tpl-form-input" id="open_time">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="close_time" class="am-u-sm-3 am-form-label">打烊时间 <span class="tpl-form-line-small-title">Close Time</span></label>
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
                                        <label for="user-weibo" class="am-u-sm-3 am-form-label">营业许可证 <span class="tpl-form-line-small-title">license_img</span></label>
                                        <div class="am-u-sm-9">
                                            <div class="am-form-group am-form-file">
                                                <div class="tpl-form-file-img">
                                                    <img src="" alt="">
                                                    <!-- assets/img/a5.png -->
                                                </div>
                                                <button type="button" class="am-btn am-btn-danger am-btn-sm">
    												<i class="am-icon-cloud-upload"></i> 上传图片信息</button>
                                                <input id="file" type="file" name="file" multiple="">
                                            </div>

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
		var business_name = $("#business_name").val();
		var owner = $("#owner").val();
		var type = $("#type").val();
		var range = $("#range").val();
		var open_time = $("#open_time").val();
		var close_time = $("#close_time").val();
		
		if(business_name==null||business_name==""){
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
	    			url:"CateringCtrl/addCatering",
	        		type:"post",
	        		data:{
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
	        				alert("添加成功");
	        				window.location.href="CateringCtrl/toaddCatering";
	        			}
	        		}
	    		});
	        },
	        error : function(data){
	        }
		});
		/*$.ajax({
			url:"CateringCtrl/addCatering",
    		type:"post",
    		data:{
    			"business_name":business_name,
    			"owner":owner,
    			"type":type,
    			"range":range,
    			"open_time":open_time,
    			"close_time":close_time,
    			
    		},
    		success:function(result){
    			if(result=="ok"){
    				alert("添加成功");
    				window.location.href="CateringCtrl/toaddCatering";
    			}
    		}
		});*/
	});
	</script>
</body>

</html>