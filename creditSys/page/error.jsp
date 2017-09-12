<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.net.URLEncoder"%>
<%
String path = request.getContextPath();
/*
获取服务器地址,应用名
*/
//
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		//错误码
		//登录失败doLogin.jsp   提示:用户名密码不对  1001
		//main.jsp     提示:未登录,请先登录 1002
		var errorCode = <%=request.getParameter("errorCode")%>;
		if(errorCode == null)
		{
			errorCode = <%=request.getAttribute("errorCode")%>;
		}
		switch(errorCode){
			case 1001:
				alert("登录失败,用户名密码不对");
				location.href="page/login.jsp";
				break;
			case 1002:
				alert("未登录,请先登录");
				location.href="page/login.jsp";
				break;
			case 1003:
				alert("验证码不对！");
				location.href="page/login.jsp";
				break;
			case 1004:
				alert("用户名、密码、验证码为空");
				location.href="page/login.jsp";
				break;
			case 1102:
				alert("部门名称重复");
				location.href="productQuery.do";
				break;
			case 1103:
				alert("添加失败");
				location.href="productQuery.do";
				break;
			case 1104:
				alert("操作失败");
				location.href="productQuery.do";
				break;
			case 1105:
				alert("产品类型已被禁用");
				location.href="productQuery.do";
				break;
			case 1106:
				alert("贷款周期已被禁用");
				location.href="productQuery.do";
				break;
			default :
				alert("未知异常,请联系管理员");
				location.href="njwb/login.jsp";
				break;
		}
	</script>
  </head>
  
  <body>
  <%
  //设置requeset字符集
  		request.setCharacterEncoding("utf-8");
  		//取参数:
  		String userName = request.getParameter("userName");
  		String pwd = request.getParameter("password");
  
   %>
        <%=userName %>,<%=pwd %>&nbsp;登录失败
  </body>
</html>
