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
	<title>conpanyManage.html</title>

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
	<script type="text/javascript" src="plugins/bootstrap/js/messager.js"></script>
	<script type="text/javascript">
		function deleteProduct(id)
		{
			 $.messager.confirm("确认删除", "确认要删除吗?删除后不能恢复", function() { 
        			location.href="companyDelete.do?id="+id;
      		 });
		}
		
		function changePageNo(pageNo)
		{
		//alert(pageNo);
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
	    <h3 class="panel-title">企业管理</h3>
	  </div>
	  <div class="panel-body">
	  		<a  href="page/companyAdd.jsp" class="btn btn-primary btn-default">
	  			添加
	  			<span class="glyphicon glyphicon-plus"></span>
	  		</a>
	  		<div class="query">
         		<form id="queryForm" action="queryAllByPage.do" method="post">
	         		公司编码：<input type="text" name="ccompanyNo" value=""> 
	         		公司名称：<input type="text" name="ccompanyName" value="">
	         		<!-- 当前的页码 -->
	         		<input id="pageNo" type="hidden" name="pageNo" value="1">
	         		<input type="submit" value="查询">
         		</form>
         	</div>
	  		<table class="table table-hover">
	  			<thead>
	  				<tr>
	  					<th>企业名称</th>
	  					<th>佣金比例</th>
	  					<th>企业详情</th>
	  					<th>操作</th>
	  				</tr>
	  			</thead>
	  			<tbody>
	  			<c:forEach items="${companyList}" var="company">
	         		<tr>
	         			<td>${company.companyName}</td>
	         			<td>${company.percentage}</td>
	         			<td>${company.context}</td>
	         			<td>
		  					<a class="btn btn-primary  btn-xs btn-warning" id="qqq" href="companyDetail.do?id=${company.id}&typeID=2">
		  						修改
		  						<span class="glyphicon glyphicon-pencil"></span>
		  					</a>
		  					<a class="btn btn-primary btn-xs btn-success" href="companyDetail.do?id=${company.id}">
		  						详情
		  						<span class="glyphicon glyphicon-list-alt"></span>
		  					</a>
		  					<a class="btn btn-primary btn-xs btn-danger" href="javascript:;" onclick="deleteProduct('${company.id}')">
		  						删除
		  						<span class="glyphicon glyphicon-remove"></span>
		  					</a>
		  				</td>
	         		</tr>
         		</c:forEach>
         		 <tr>
          		 	<td colspan="5">
          		 		<span onclick="changePageNo(1)">首页</span>  &nbsp;&nbsp;&nbsp;&nbsp;   
          		 		<span onclick="changePageNo(${pageNo-1 })">上一页</span> &nbsp;&nbsp;&nbsp;&nbsp;  
          		 		<span onclick="changePageNo(${pageNo+1 })">下一页</span> &nbsp;&nbsp;&nbsp;&nbsp;    
          		 		<span onclick="changePageNo(${totalPage })">尾页</span>    &nbsp;&nbsp;&nbsp;&nbsp; 
          		 		当前${pageNo }页/共${totalPage }页
          		 	</td>
          		 </tr>
         		
	  			</tbody>
	  		</table>
	  </div>
	</div>
	
</body>
</html>