<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
 <base href="<%=basePath%>">
	<title>companyAdd.html</title>

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
	    <h3 class="panel-title">企业添加</h3>
	  </div>
	  <div class="panel-body">
	  		
	  		<form class="form-horizontal" id="message" role="form" action="companyAdd.do" method="post">
	  		
            <div class="form-group">
              <label for="companyName" class="col-lg-2 control-label">企业名称</label>
              <div class="col-lg-10">
                <input type="text" class="form-control" id="companyName" name="companyName" placeholder="产品名称">
              </div>
            </div>
            
            <div class="form-group">
            	<label for="productRate" class="col-lg-2 control-label">融资佣金</label>
            	<div class="col-lg-10">
			        <div class="input-group col-lg-3" style="float: left;">
			            <input type="text" class="form-control" name="percentage" placeholder="佣金数">
			            <span class="input-group-addon">%</span>
			        </div>
			    </div>
          	</div>
            
            <div class="form-group">
              <label for="content" class="col-lg-2 control-label">内容</label>
              <div class="col-lg-10">
              	
<!-- 			asdjalkj dlkajsdkl asjdlkaj sdkl asd -->
			<div class="btn-toolbar" data-role="editor-toolbar"	data-target="#content">
				<div class="btn-group">
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
<!--               	asdalksdjklasj -->
            <input type="hidden" id="context" name="context" value=""/>  	
            <div id="content" style="overflow:scroll; max-height:300px;border: 1px solid;height: 200px;"></div>
         </div>
     </div>
            
            
            
            <div class="form-group">
              <div class="col-lg-offset-2 col-lg-10">
                <button type="button" onclick="sub()" class="btn btn-lg btn-success" style="padding: 15px 60px;border-radius: 0px;">添加</button>
              </div>
            </div>
          </form>
	  		
	  		
	  		
	  </div>
	</div>
	
</body>
	<script type="text/javascript">
		function sub(){
			$("#context").attr("value",$("#content").html());
			$("#message").submit();
		}
	</script>
</html>
