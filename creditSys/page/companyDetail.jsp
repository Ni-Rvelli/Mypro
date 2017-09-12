<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
 <base href="<%=basePath%>">
	<title>companyDetail.html</title>

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
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src="plugins/fwb/bootstrap-wysiwyg.js"></script>
	<script src="plugins/fwb/external/jquery.hotkeys.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/productAdd.js"></script>
	<script type="text/javascript" src="plugins/FlatUI/dist/js/application.js"></script>
	
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">企业详情</h3>
	  </div>
	  <div class="panel-body">
	  		
	  		<form class="form-horizontal" role="form" action="queryAllByPage.do">
	  		
	  		<div class="form-group">
              <label for="companyId" class="col-lg-2 control-label">企业编号</label>
              <div class="col-lg-10">
                	${company.id}
              </div>
            </div>
	  		
            <div class="form-group">
              <label for="companyName" class="col-lg-2 control-label">企业名称</label>
              <div class="col-lg-10">
                	${company.companyName}
              </div>
            </div>
            
            <div class="form-group">
            	<label for="productRate" class="col-lg-2 control-label">融资佣金</label>
            	<div class="col-lg-10">
			        <div class="input-group col-lg-3" style="float: left;">
			            ${company.percentage}
			        </div>
			    </div>
          	</div>
            
            <div class="form-group">
              <label for="content" class="col-lg-2 control-label">内容</label>
              <div class="col-lg-10">
              	${company.context}
         	  </div>
     	   </div>
            
          </form>
	  		
	  </div>
	</div>
	
</body>
</html>
