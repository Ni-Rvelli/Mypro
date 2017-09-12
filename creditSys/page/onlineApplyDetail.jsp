<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<title>onlineApplyDetail.html</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css"
		type="text/css"></link>
	<link rel="stylesheet" href="plugins/FlatUI/dist/css/flat-ui.css"
		type="text/css"></link>
	<link rel="shortcut icon" href="plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="plugins/FlatUI/dist/js/flat-ui.js"></script>
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">在线申请详情</h3>
	  </div>
	  <div class="panel-body">
	  		<table class="table table-hover">
	  			<thead>
	  				<tr>
	  					<th>产品名称</th>
	  					<th>申请人</th>
	  					<th>申请数额</th>
	  					<th>申请日期</th>
	  					<th>身份证号</th>
	  				</tr>
	  			</thead>
	  			<tbody>
	  			<c:forEach items="${investorList}" var="investor">
		  			<tr> 	 	 	 	 	 
		  				<td>${investor.investProduct}</td>
		  				<td>${investor.name}</td>
		  				<td>${investor.moneny}万</td>
		  				<td>${investor.createTime}</td>
		  				<td>${investor.identityId}</td>
		  			</tr>
		  			</c:forEach>
	  			</tbody>
	  		</table>
	  </div>
	</div>
	
</body>
</html>
