<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<base href="<%=basePath%>">
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
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="assets/css/app.css">
    <script src="assets/js/jquery.min.js"></script>

</head>

<body data-type="login">
    <script src="assets/js/theme.js"></script>
    <div class="am-g tpl-g">
        
        <div class="tpl-login">
            <div class="tpl-login-content">
                <div class="tpl-login-logo">

                </div>



                <form class="am-form tpl-form-line-form" method="post">
                    <div class="am-form-group">
                        <input type="text" class="tpl-form-input" id="username" name="username" placeholder="请输入账号">

                    </div>

                    <div class="am-form-group">
                        <input type="password" class="tpl-form-input" id="pwd" name="pwd" placeholder="请输入密码">

                    </div>
                    <div class="am-form-group tpl-login-remember-me">
                        <input id="remember-me" type="checkbox">
                        <label for="remember-me"> 记住密码</label>
                    </div>
                    <div class="am-form-group">
                        <button type="button" id="submitBtn" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn">登录</button>
						<a href="RegisterCtrl/toRegister"><button type="button" id="registerBtn" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-warning  tpl-login-btn">注册</button></a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
    <script type="text/javascript">
    $("#submitBtn").click(function (){
    	var username = $("#username").val();
    	var pwd = $("#pwd").val();
    	$.ajax({
    		url:"LoginCtrl/login",
    		type:"post",
    		data:{
    			"username":username,
    			"pwd":pwd
    		},
    		success:function(result){
    			if(result=="error"){
    				alert("账号密码错误");
    			}
    			if(result=="index"){
    				window.location.href="AmusementCtrl/toAmusementView";
    			}if(result=="tourist_index"){
    				window.location.href="AmusementCtrl/toTouristAmusementView";
    			}
    		}
    	});
    });
    </script>
</body>

</html>