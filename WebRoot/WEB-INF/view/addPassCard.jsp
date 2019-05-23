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
                    <a href="PassCtrl/toAddPassCard"  class="active">
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
                <div class="row">
                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span> 发布项目 <small>PassCard</small></div>
                        <p class="page-header-description">在此发布您所需要的内容。</p>
                    </div>
                </div>

            </div>

            <div class="row-content am-cf">


                <div class="row">

                    <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                        <div class="widget am-cf">
                            <div class="widget-head am-cf">
                                <div class="widget-title am-fl">PassCard发布</div>
                            </div>
                            <div class="widget-body am-fr">

                                <form class="am-form tpl-form-line-form" id="f">
                                    <div class="am-form-group">
                                        <label for="facilityName" class="am-u-sm-3 am-form-label">第一站 <span class="tpl-form-line-small-title">1st</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="pc1" placeholder="请输入站点名称">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="facilityName" class="am-u-sm-3 am-form-label">第二站 <span class="tpl-form-line-small-title">2rd</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="pc2" placeholder="请输入站点名称">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="facilityName" class="am-u-sm-3 am-form-label">第三站 <span class="tpl-form-line-small-title">3rd</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="pc3" placeholder="请输入站点名称">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="facilityName" class="am-u-sm-3 am-form-label">第四站 <span class="tpl-form-line-small-title">4th</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="pc4" placeholder="请输入站点名称">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="facilityName" class="am-u-sm-3 am-form-label">第五站 <span class="tpl-form-line-small-title">5th</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="pc5" placeholder="请输入站点名称">
                                        </div>
                                    </div>
                                    <div class="am-form-group">
                                        <label for="facilityName" class="am-u-sm-3 am-form-label">第六站 <span class="tpl-form-line-small-title">6th</span></label>
                                        <div class="am-u-sm-9">
                                            <input type="text" class="tpl-form-input" id="pc6" placeholder="请输入站点名称">
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
		var pc1 = $("#pc1").val();
		var pc2 = $("#pc2").val();
		var pc3 = $("#pc3").val();
		var pc4 = $("#pc4").val();
		var pc5 = $("#pc5").val();
		var pc6 = $("#pc6").val();
		$.ajax({
			url : "PassCtrl/addPassCard",
			data : {
				pc1:pc1,
				pc2:pc2,
				pc3:pc3,
				pc4:pc4,
				pc5:pc5,
				pc6:pc6,
			},
			type : 'post',
	        success : function(data){
	        	alert(data);
			},
			error : function(data){
				
	        }
		});
	});
	</script>
</body>

</html>