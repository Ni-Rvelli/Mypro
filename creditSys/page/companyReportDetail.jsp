<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
	<title>companyReportDetail.html</title>
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="plugins/FlatUI/dist/css/flat-ui.css" type="text/css"></link>
	<link rel="shortcut icon" href="plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src="plugins/bootstrap/js/messager.js"></script>
	
	<script>
		function changePageNo(pageNo)
		{
			//改变pageNo的值
			$("#pageNo").val(pageNo);
			//触发表单的提交
			$("#queryForm").submit();
		}
	</script>
	
</head>

<body style="padding: 5px 10px">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">企业报表详情(中国银行：2014年)</h3>
		</div>
		<div class="panel-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>融资产品</th>
	  					<th>融资目标</th>
	  					<th>实际融资数</th>
	  					<th>佣金</th>
	  				</tr>
	  			</thead>
	  			<tbody>
	  				<c:forEach items="${productList}" var="product">
			  			<tr> 	 	 	 	 	 
			  				<td>产品名称${product.productName }</td>
			  				<td>融资目标${product.target}</td>
			  				<td>实际融资${product.reality }</td>
			  				<td>佣金${product.reality * product.percentage }</td>
			  			</tr>
			  		</c:forEach>
			  		
			  		<form id="queryForm" action="companyReportDetailDis.do?companyName=${companyName}" method="post">
	         			<!-- 当前的页码 -->
	         			<input id="pageNo" type="hidden" name="pageNo" value="1">
         			</form>
         			<tr>
				  		<td colspan="4" style="text-align: center;">
				  			<input type="button" value="首页" onclick="changePageNo(1)"/> &nbsp;&nbsp;&nbsp;&nbsp;
				  			<input type="button" value="上一页" onclick="changePageNo(${pageNo-1 })"/> &nbsp;&nbsp;&nbsp;&nbsp;
				  			<input type="button" value="下一页" onclick="changePageNo(${pageNo+1 })"/> &nbsp;&nbsp;&nbsp;&nbsp;
				  			<input type="button" value="尾页" onclick="changePageNo(${totalPage })"/> &nbsp;&nbsp;&nbsp;&nbsp;
	          		 		当前第&nbsp;${pageNo }&nbsp;页/共&nbsp;${totalPage }&nbsp;页
				  		</td>
				  	</tr>
	  			</tbody>
	  		</table>
	  	</div>
	</div>
</body>
</html>