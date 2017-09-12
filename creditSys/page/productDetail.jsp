<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<title>productDetail.html</title>

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
	
	
</head>

<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">融资产品修改</h3>
	  </div>
	  <div class="panel-body">
	  		
	  		<form class="form-horizontal" role="form" action="productManage.html">
	  		
	  		<div class="form-group">
              <label for="productID" class="col-lg-2 control-label">产品编号</label>
              <div class="col-lg-10">
                ${product.productNo}
              </div>
            </div>
	  		
            <div class="form-group">
              <label for="productName" class="col-lg-2 control-label">产品名称</label>
              <div class="col-lg-10">
               		 ${product.productName}
              </div>
            </div>
            
            <div class="form-group">
            	<label for="productRate" class="col-lg-2 control-label">贷款利率</label>
            	<div class="col-lg-10">
			       ${product.loadRate }
			    </div>
          	</div>
            
            
            <div class="form-group">
              <label for="company" class="col-lg-2 control-label">发行单位</label>
              <div class="col-lg-10">
          		      ${product.company }
              </div>
            </div>
            
             <div class="form-group">
            	<label for="loansize" class="col-lg-2 control-label">贷款规模</label>
            	<div class="col-lg-10">
			        <div class="input-group col-lg-3" style="float: left;">
			           ${product.loadScale}
			        </div>
			    </div>
          	</div>
            
            <div class="form-group">
              <label for="productType" class="col-lg-2 control-label">产品类型</label>
              <div class="col-lg-10">
		              ${product.productType }
              </div>
            </div>
            
            <div class="form-group">
              <label for="productDuration" class="col-lg-2 control-label">贷款周期</label>
              <div class="col-lg-10">
		               ${product.period }
              </div>
            </div>
            
            
            <div class="form-group">
              <label for="linkman" class="col-lg-2 control-label">联系人</label>
              <div class="col-lg-10">
             		   ${product.linkMan }
              </div>
            </div>
            
            <div class="form-group">
              <label for="bank" class="col-lg-2 control-label">联系银行</label>
              <div class="col-lg-10">
         		       ${product.linkBank }
              </div>
            </div>
            
            <div class="form-group">
              <label for="content" class="col-lg-2 control-label">内容</label>
              <div class="col-lg-10">
           		 <div id="content" style=" max-height:300px;height: 200px;">
           		${product.context }
           		 </div>
        	 </div>
     </div>
          </form>
	  </div>
	</div>
	
</body>
</html>
