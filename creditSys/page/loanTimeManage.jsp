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
	<title>loanTimeManage.html</title>

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

</head>
<script type="text/javascript">
		
		function modify(name,id)
		{
			$("#loanTimeId4Modify").val(id);
			$("#loanTimeName4Modify").val(name);
			$('#proModify').modal();
		}
		
		function changeStatus(id,status,lineId)
		{
			$.ajax({
				url:"statusModify.do?id=" + id +"&status=" + status,
				type:"get",
				async:true,
				dataType:"text",
				success:function(data){
					if(data==1){
						$("#status"+lineId).attr("class","btn btn-primary btn-xs btn-success");
						$("#status"+lineId).html("启用<span class='glyphicon glyphicon-ok'></span>");
						$("#isstatus"+lineId).html("禁用");
					}else if(data==0){
						$("#status"+lineId).attr("class","btn btn-primary btn-xs btn-danger");
						$("#status"+lineId).html("禁用<span class='glyphicon glyphicon-remove'></span>");
						$("#isstatus"+lineId).html("启用");
						
					}
				}
				});
			
		}
</script>
<body style="padding: 5px 10px;">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">贷款周期管理</h3>
	  </div>
	  <div class="panel-body">
	  		<a  href="javascript:;" class="btn btn-primary btn-default" data-toggle="modal" data-target="#proAdd">
	  			添加
	  			<span class="glyphicon glyphicon-plus"></span>
	  		</a>
	  		
	  		<table class="table table-hover table-bordered">
	  			<thead>
	  				<tr>
	  					<th>贷款周期ID</th>
	  					<th>周期</th>
	  					<th>状态</th>
	  					<th>操作</th>
	  				</tr>
	  			</thead>
	  			<tbody>
	  			
	  			<c:forEach items="${loadPeriodList}" var="loadPeriod" varStatus="indexObj">
	  			<tr> 	 	 	 	 	 
		  				<td>${loadPeriod.id}</td>
		  				<td>
		  					${loadPeriod.period}
		  				</td>
		  				<td id="isstatus${indexObj.index}">${loadPeriod.status==1? "启用":"禁用"}</td>
		  				<td>
		  					<a class="btn btn-primary  btn-xs btn-warning" href="javascript:;" onclick="modify('${loadPeriod.period}',${loadPeriod.id})">
		  						修改
		  						<span class="glyphicon glyphicon-pencil"></span>
		  					</a>
		  					<c:if test="${loadPeriod.status==1}">
			  					<a class="btn btn-primary btn-xs btn-danger" id="status${indexObj.index}" href="javascript:;" onclick="ti(${loadPeriod.id},${indexObj.index})">
			  						禁用
			  						<span class="glyphicon glyphicon-remove"></span>
			  					</a>
		  					</c:if>
		  					<c:if test="${loadPeriod.status==0}">
			  					<a class="btn btn-primary btn-xs btn-success" id="status${indexObj.index}" href="javascript:;" onclick="ti(${loadPeriod.id},${indexObj.index})">
			  						启用
			  						<sp an class="glyphicon glyphicon-ok"></span>
			  					</a>
		  					</c:if>
		  					
		  				</td>
		  			</tr>
	  			</c:forEach>
	  			 <tr>
          		 	<td colspan="4">
          		 		<a href="queryAllByPeriod.do">首页</a>  &nbsp;&nbsp;&nbsp;&nbsp;   
          		 		<a href="queryAllByPeriod.do?pageNo=${pageNo-1 }">上一页</a> &nbsp;&nbsp;&nbsp;&nbsp;  
          		 		<a href="queryAllByPeriod.do?pageNo=${pageNo+1 }">下一页</a> &nbsp;&nbsp;&nbsp;&nbsp;    
          		 		<a href="queryAllByPeriod.do?pageNo=${totalPage }">尾页</a>    &nbsp;&nbsp;&nbsp;&nbsp; 
          		 		当前${pageNo }页/共${totalPage }页
          		 	</td>
          		 </tr>    
	  			</tbody>
	  		</table>
	  </div>
	</div>
	
	
	
			<!-- 产品修改Modal -->
			<div class="modal fade" style="margin-top: 200px;" id="proModify" tabindex="-1" role="dialog" aria-labelledby="proModifyLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			        <form class="form-horizontal" role="form" action="loadPeriodModify.do">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					        <h4 class="modal-title" id="myModalLabel">周期修改</h4>
					      </div>
					      <div class="modal-body">
					      			<div class="form-group">
						              <label for="loanTimeId4Modify" class="col-lg-2 control-label">周期Id</label>
						              <div class="col-lg-10">
						                <input type="text"  name="id" class="form-control" id="loanTimeId4Modify" readonly="readonly"/>
						              </div>
						            </div>
						            <div class="form-group">
						              <label for="loanTimeName4Modify" class="col-lg-2 control-label">周期</label>
						              <div class="col-lg-10">
						                <input type="text"  name="monthModify" class="form-control" id="loanTimeName4Modify"  placeholder="单位：月"/>
						              </div>
						            </div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					        <input type="submit" class="btn btn-primary" value="修改" />
					      </div>
           			</form>
			    </div>
			  </div>
			</div>
			<!-- 产品修改Modal -->
			
			<!-- 产品类型添加Modal -->
			<div class="modal fade" style="margin-top: 200px;" id="proAdd" tabindex="-1" role="dialog" aria-labelledby="proAddLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			        <form class="form-horizontal" role="form" action="loadPreiodAdd.do">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					        <h4 class="modal-title" id="proAddLabel">周期添加</h4>
					      </div>
					      <div class="modal-body">
						            <div class="form-group">
						              <label for="loanTimeName4Add" class="col-lg-2 control-label">周期</label>
						              <div class="col-lg-10">
						                <input type="text" name="month" class="form-control" id="loanTimeName4Add" placeholder="单位：月">
						              </div>
						            </div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					        <input type="submit" class="btn btn-primary" value="添加" />
					      </div>
           			</form>
			    </div>
			  </div>
			</div>
			<!-- 产品添加Modal -->
			
</body>
<script type="text/javascript">
	function ti(id,lineId){
		var type = $("#isstatus"+lineId).html()=="启用"? '1':'0';
		changeStatus(id,type,lineId);
	}
</script>
</html>

