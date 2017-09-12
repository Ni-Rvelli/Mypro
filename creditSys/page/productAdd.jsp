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
	<title>productAdd.html</title>

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
<script>
function subCont(){
	$("#cont").val($("#content").html());
}
function checkProductName(){
	 $.ajax({
			 url:"checkProductName.do?productName="+$("#productName").val(),
			 type:"get",
			 async:true,
			 dateType:"text",
			 success:function(data){
				 if("2"==data){
					 $("#resultMsg1").html("部门已存在（部门名称重复！）");
						$("#resultMsg1").attr("style", "color:red");
				 }
			 }
		 });
}
</script>
<body style="padding: 5px 10px">

	<div class="panel panel-primary">
	  <div class="panel-heading">
	    <h3 class="panel-title">融资产品添加</h3>
	  </div>
	  <div class="panel-body">
	  		<form class="form-horizontal" role="form" action="productAdd.do" onSubmit="subCont()" enctype="multipart/form-data" method="post">
            <div class="form-group">
              <label for="productName" class="col-lg-2 control-label">产品名称</label>
              <div class="col-lg-10">
                <input type="text" class="form-control" id="productName" name="productName" placeholder="产品名称" onblur="checkProductName()"><span id="resultMsg1"></span>
              </div>
            </div>
            
            <div class="form-group">
            	<label for="productRate" class="col-lg-2 control-label">贷款利率</label>
            	<div class="col-lg-10">
			        <div class="input-group col-lg-3" style="float: left;">
			            <input type="text" name="minRate" class="form-control" placeholder="最低利率,不填默认为0">
			            <span class="input-group-addon">%</span>
			        </div>
			        <div style="float: left;margin: 0 10px;">-----</div>
			        <div class="input-group col-lg-4" style="clear:both">
			            <input type="text" name="maxRate" class="form-control" placeholder="最高利率,可不填,不填认为利率为固定值">
			            <span class="input-group-addon">%</span>
			        </div>
			    </div>
          	</div>
            
            
            <div class="form-group">
              <label for="company" class="col-lg-2 control-label">发行单位</label>
              <div class="col-lg-10">
                   <select name="select1" data-toggle="select" class="form-control select select-default">
                   <c:forEach items="${companyList}" var="company">
		                <option  value="${company.companyName}">${company.companyName}</option>
		              </c:forEach>
		              </select>
              </div>
            </div>
            
             <div class="form-group">
            	<label for="loansize" class="col-lg-2 control-label">贷款规模</label>
            	<div class="col-lg-10">
			        <div class="input-group col-lg-3" style="float: left;">
			            <input type="text" name="minScale" class="form-control" placeholder="最低贷款规模,不填默认为0">
			            <span class="input-group-addon">万</span>
			        </div>
			        <div style="float: left;margin: 0 10px;">-----</div>
			        <div class="input-group col-lg-5" style="clear:both" >
			            <input type="text" name="maxScale" class="form-control" placeholder="最高贷款规模,可不填,不填认为贷款规模为固定值">
			            <span class="input-group-addon">万</span>
			        </div>
			    </div>
          	</div>
            
            <div class="form-group">
              <label for="productType" class="col-lg-2 control-label">产品类型</label>
              <div class="col-lg-10">
		              <select name="select2" data-toggle="select" class="form-control select select-default">
		              <c:forEach items="${productTypeList}" var="productType">
		                <option value="${productType.id}">${productType.name}</option>
		               </c:forEach>
		              </select>
              </div>
            </div>
            
            <div class="form-group">
              <label for="productDuration" class="col-lg-2 control-label">贷款周期</label>
              <div class="col-lg-10">
		              <select name="select3"  data-toggle="select" class="form-control select select-default">
			              <c:forEach items="${loadPeriodList}" var="loadPeriod">
			              
			                <option  value="${loadPeriod.id}">${loadPeriod.period}</option>
		                 </c:forEach>
		              </select>
              </div>
            </div>
             <div class="form-group">
              <label for="linkman" class="col-lg-2 control-label">融资目标</label>
              <div class="col-lg-10">
                <input type="text" name="reality" class="form-control" id="reality"  placeholder="单位：万元">
              </div>
            </div>
            
            <div class="form-group">
              <label for="linkman" class="col-lg-2 control-label">联系人</label>
              <div class="col-lg-10">
                <input type="text" name ="linkMan" class="form-control" id="linkman"  placeholder="联系人">
              </div>
            </div>
            
            <div class="form-group">
              <label for="bank" class="col-lg-2 control-label">联系银行</label>
              <div class="col-lg-10">
                <input type="text" name ="linkBank" class="form-control" id="bank"  placeholder="联系银行">
              </div>
            </div>
            
            <div class="form-group">
              <label for="content" class="col-lg-2 control-label">内容</label>
              <div class="col-lg-10">
              	
<!-- 			asdjalkj dlkajsdkl asjdlkaj sdkl asd -->
			<div class="btn-toolbar" data-role="editor-toolbar"	data-target="#content">
				<div class="btn-group">
					<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)">
						<b>加粗</b>
					</a> 
					<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)">
						<i>倾斜</i>
					</a> 
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="insertunorderedlist" title="Bullet list">
						列表
					</a>
					<a class="btn" data-edit="insertorderedlist" title="Number list">
						有序列表
					</a> 
					<a class="btn" data-edit="indent" title="Indent (Tab)">
						Tab缩进
					</a>
				</div>
				<div class="btn-group">
					<a class="btn" data-edit="justifyleft"
						title="Align Left (Ctrl/Cmd+L)">
						左对齐
					</a> 
					<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)">
						居中
					</a> 
					<a class="btn" data-edit="justifyright"
						title="Align Right (Ctrl/Cmd+R)">
						右对齐
					</a> 
					<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)">
						自动调整
					</a>
				</div>
		
		 		<div class="btn-group">
					<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)">
						撤销
					</a> 
					<a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)">
						恢复
					</a>
				</div>
				
			</div>
              	
            <div id="content" style="overflow:scroll; max-height:300px;border: 1px solid;height: 200px;"></div>
         	<textarea name="content" id="cont" style="display:none"></textarea>
         </div>
     </div>
            <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10"> 
            产品图片： 
    	    <input type="file" name="uploadFile">
    	    </div>
           
            </div>
            
            
            <div class="form-group">
              <div class="col-lg-offset-2 col-lg-10">
               <button type="submit" class="btn btn-lg btn-success" style="padding: 15px 60px;border-radius: 0px;">添加</button>
              </div>
            </div>
          </form>
	  		
	  		
	  		
	  </div>
	</div>
	
</body>
</html>
