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
	<title>companyReport.html</title>
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="plugins/FlatUI/dist/css/flat-ui.css" type="text/css"></link>
	<link rel="shortcut icon" href="plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="plugins/datetimepicker/bootstrap-datetimepicker.css" type="text/css"></link>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src="plugins/bootstrap/js/messager.js"></script>
	<script type="text/javascript" src="plugins/datetimepicker/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript" src="plugins/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
	
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
			<h3 class="panel-title">企业报表</h3>
	  	</div>
	  	<div class="panel-body">
<%--	  		<form class="form-inline" role="form" method="post" style="margin-bottom: 10px;" action="">--%>
<%--				  <div class="form-group">--%>
<%--				    <label  for="time">查询年份</label>--%>
<%--				    <input type="text" readonly="readonly"  id="datetimepicker" data-date-format="yyyy" class="form-control" id="time" placeholder="">--%>
<%--				  </div>--%>
<%--				  <input type="submit" class="btn btn-default" value="查询" />--%>
<%--				  <input type="button" class="btn btn-danger" value="清空条件" />--%>
<%--				  <hr/>--%>
<%--			</form>--%>
<%--	  		<script type="text/javascript">--%>
<%--					$('#datetimepicker').datetimepicker({--%>
<%--				        language:  'zh-CN',--%>
<%--				        weekStart: 1,--%>
<%--				        todayBtn:  1,--%>
<%--						autoclose: 1,--%>
<%--						todayHighlight: 1,--%>
<%--						startView: 4,--%>
<%--						minView: 4,--%>
<%--						forceParse: 0--%>
<%--				    });--%>
<%--				</script>--%>
		
		<table class="table table-hover">
			<thead>
				<tr>
  					<th>企业名称</th>
  					<th>融资产品总数</th>
  					<th>总融资目标</th>
  					<th>实际融资数</th>
  					<th>佣金</th>
  					<th>操作</th>
  				</tr>
  			</thead>
			<tbody>
	  			<c:forEach items="${companyList}" var="company">
		  			<tr> 	 	 	 	 	 
		  				<td>${company.companyName}</td>
		  				<td>${company.count}</td>
		  				<td>${company.target}</td>
		  				<td>${company.reality}</td>
		  				<td>${company.reality * company.percentage}</td>
		  				<td>
		  					<a class="btn btn-primary btn-xs btn-success" 
		  					href="companyReportDetailDis.do?companyName=${company.companyName}">
		  					详情
		  						<span class="glyphicon glyphicon-list-alt"></span>
		  					</a>
		  				</td>
		  			</tr>
		  		</c:forEach>
		  		<form id="queryForm" action="companyReportDis.do" method="post">
	         		<!-- 当前的页码 -->
	         		<input id="pageNo" type="hidden" name="pageNo" value="1">
         		</form>
			  	<tr>
			  		<td colspan="6" style="text-align: center;">
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