<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="plugins/FlatUI/dist/css/flat-ui.css" type="text/css"></link>
	<link rel="shortcut icon" href="plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src="js/base.js"></script>
    <title>登录到Iting</title>
    	<style type="text/css">
    		$(function(){
    			$('#loginFrm');
    		})	
    	</style>
	<style type="text/css">
		body{
			background-color: #7784a0;
			padding-top: 40px;
		}
		.loginDiv{
			margin: auto;
			height: 300px;
			width: 600px;
			margin-top:1111pz;;
			background-color: #aaaaaa;
			color: white;
		}
		.loginFrm{
			margin: auto;
			height: 300px;
			width: 600px;
			height: 300px;
			background: #ffffff;
			margin-top:1111pz;;
		}
	</style>
</head>
	
<body>
	<div class="loginDiv" style="height: 61px;">
		<h3 style="text-align: center;padding-top: 10px;">欢迎使用ITing融资系统</h3>
	</div>
	<div class="loginFrm">
			<form class="form-horizontal" role="form" action="login.do" name="form1">
					    <div class="form-group" style="padding-top: 15px;">
							<label for="userName" class="col-lg-2 control-label">用户名</label>
							<div class="col-lg-9">
								<input type="text" class="form-control" id="userName" name="userName" />
							</div>
						</div>
						<div class="form-group">
							  <label for="pwd" class="col-lg-2 control-label">密码</label>
							  <div class="col-lg-9">
							     <input type="password" class="form-control" id="pwd" name="password" />
							  </div>
						</div>
						<div class="form-group" align="right">
							  <div class="col-lg-10">
							  		<a style="border: none;" class="btn" href="javaScript:form1.submit();" >
							  			<img alt="" src="images/login_btn.png">
							  		</a>
							  </div>
						</div>
						<div  class="form-group" align="right" >
							<hr style="width:80%"/>	
							<div class="col-lg-10" style="color:lightgrey">
							  		南京网博   designed by 崔译 cuiyi@itany.com
							  </div>
						</div>
           			</form>
	</div>
</body>
</html>






