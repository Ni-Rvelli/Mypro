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
	<script type="text/javascript" src="js/layer/layer.js"></script>
	<script type="text/javascript">
		function deleteProduct(productNo)
		{
			var result = window.confirm("确认要删除吗?");
			if(true == result){
				
				location.href="deleteProduct.do?productNo=" + productNo;
			}
		}
		
	</script>
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">融资产品管理</h3>
	  </div>
	  <div class="panel-body">
	  		<a  href="productQueryAll.do" class="btn btn-primary btn-default" >
	  			添加
	  			<span class="glyphicon glyphicon-plus"></span>
	  		</a>
	  		<table class="table table-hover">
	  			<thead>
	  				<tr> 
	  				    
	  				    <th>产品编号</th>
	  					<th>产品名称</th>
	  					<th>发行单位</th>
	  					<th>产品类型</th>
	  					<th>贷款周期</th>
	  					<th>贷款利率</th>
	  					<th>贷款规模</th>
	  					<th>操作</th>
	  					
	  				</tr>
	  			</thead>
	  			<tbody>
	  			<c:forEach items="${productList}" var="product">
		  			<tr> 
		  			    
		  			    <td>${product.productNo}</td>	 	 	 	 	 
		  				<td>${product.productName}</td>
		  				<td>${product.company}</td>
		  				<td>${product.productType}</td>
		  				<td>${product.period}</td>
		  				<td>${product.loadRate}%</td>
		  				<td>${product.loadScale}万</td>
		  				<td></td>
		  				<td>
		  					<a class="btn btn-primary  btn-xs btn-warning" href="productModify.do?productNo=${product.productNo}">
		  						修改
		  						<span class="glyphicon glyphicon-pencil"></span>
		  					</a>
		  					<a class="btn btn-primary btn-xs btn-success" href="productDetail.do?productNo=${product.productNo}&differ=2">
		  						详情
		  						<span class="glyphicon glyphicon-list-alt"></span>
		  					</a>
		  					<a class="btn btn-primary btn-xs btn-danger" href="javascript:;" onclick="deleteProduct(${product.productNo})">
		  						删除
		  						<span class="glyphicon glyphicon-remove"></span>
		  					</a>
		  				</td>
		  			</tr>
		  			 </c:forEach>
		  			  <tr>
          		 	<td colspan="5">
          		 		<a href="queryAllByPage.do?no=1">首页</a>  &nbsp;&nbsp;&nbsp;&nbsp;   
          		 		<a href="queryAllByPage.do?pageNo=${pageNo-1 }&no=1">上一页</a> &nbsp;&nbsp;&nbsp;&nbsp;  
          		 		<a href="queryAllByPage.do?pageNo=${pageNo+1 }&no=1">下一页</a> &nbsp;&nbsp;&nbsp;&nbsp;    
          		 		<a href="queryAllByPage.do?pageNo=${totalPage }&no=1">尾页</a>    &nbsp;&nbsp;&nbsp;&nbsp; 
          		 		当前${pageNo }页/共${totalPage }页
          		 	</td>
          		 </tr>    
	  			</tbody>
	  		</table>
	  </div>
	</div>
	
</body>
</html>
