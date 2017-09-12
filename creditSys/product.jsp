<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ITing金融-产品</title>



<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="plugins/FlatUI/dist/css/flat-ui.css" type="text/css"></link>
	<link rel="shortcut icon" href="plugins/FlatUI/dist/img/favicon.ico">
	<link rel="stylesheet" href="css/css.css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="plugins/FlatUI/dist/js/flat-ui.js"></script>
	<script type="text/javascript" src="js/base.js"></script>
</head>

<body>

<div class="wrap header oauto clear">
    <div class="fr">
    	<a href="#" >
    		当前时间：2014年10月10日 04:28:35
    	</a>
    </div>
</div>
<div class="logo-nav">
    <div class="wrap oauto">
        <div class="clear">
            <div class="fl"><img src="images/logo.png" /></div>
        </div>
    </div>
</div>
<div class="menu">
    <ul class="clear">
        <li><a href="index.jsp" class="cur">融资产品</a></li>
        <li><a href="news.jsp" target="_blank">每日新闻</a></li>
    </ul>
</div>



<div class="wrap font16">首页 >> 融资产品 >> ${product.productName}</div>
<div class="wrap clear">
	<div class="fl">
    	<div class="detail_detail">
        	<div class="success_tp clear">
            	<div class="fl">${product.productName}</div>
            </div>
            <div class="detail_detail_bt">
            	<div class="detail_detail_bt1">
            	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>产品名称：${product.productName}</td>
                      <td>放贷利率：${product.loadRate}（年化利率）</td>
                    </tr>
                    <tr>
                      <td>发行单位：${product.company}</td>
                      <td>放贷金额：${product.loadRate}万元</td>
                    </tr>
                    <tr>
                      <td>产品类型：${product.productType}</td>
                      <td>放贷期限：${product.period}个月</td>
                    </tr>
                  </table>
            	</div>
                <div class="detail_detail_bt3 clear">
                	<div class="fl"><img src="images/logo.png" />经理：${product.linkMan}<br />${product.linkBank}南京分行小微金融</div>
                    <div class="fr">
                    	<a href="javascript:;" data-toggle="modal" data-target="#applyModal" class="apply-btn" />
                    		申请
                    	</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="detail_detail_title title clear"><h1 class="fl">产品详情</h1></div>
        <div class="detail_detail_in">
        	<h1><span class="logo1"></span>产品描述</h1>
            <p>${product.context }</p>
        </div>
    </div>
    <div class="fr">
    	<div class="success">
        	<div class="success_tp">产品成功申请人<span class="fe4800">（${investorNum}）</span>人</div>
            <div class="success_bt">
            <c:forEach items="${investorList}" var="investor">
            	<ul>
                	<li><h1>${investor.id}</h1><span>${investor.name}</span>成功申请（${investor.moneny}万元）</li>
                </ul>
            </c:forEach>
            </div>
        </div>
    </div>
</div>


		<!-- 申请 -->
			<div class="modal fade" style="margin-top: 200px;" id="applyModal" tabindex="-1" role="dialog" aria-labelledby="applyModal" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			        <form class="form-horizontal" role="form" action="apply.do">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					        <h4 class="modal-title" id="myModalLabel">申请</h4>
					      </div>
					      <div class="modal-body">
					      			<div class="form-group">
						              <label for="productId" class="col-lg-2 control-label">产品ID</label>
						              <div class="col-lg-10">
						                <input type="text" class="form-control" id="productId" name="productId"  readonly="readonly" value="${product.productNo}"/>
						              </div>
						            </div>
						            <div class="form-group">
						              <label for="productName" class="col-lg-2 control-label">产品名称</label>
						              <div class="col-lg-10">
						                <input type="text" class="form-control" id="productName" name="productName" readonly="readonly" value="${product.productName}" />
						              </div>
						            </div>
						            <div class="form-group">
						              <label for="applyPersonIDCard" class="col-lg-2 control-label">申请人身份证号</label>
						              <div class="col-lg-10">
						                <input type="text" class="form-control" id="applyPersonIDCard" name="applyPersonIDCard"  placeholder="申请人身份证号" />
						              </div>
						            </div>
						            <div class="form-group">
						              <label for="applyPerson" class="col-lg-2 control-label">申请人</label>
						              <div class="col-lg-10">
						                <input type="text" class="form-control" id="applyPerson" name="applyPerson" placeholder="请使用上面身份证上的姓名" />
						              </div>
						            </div>
						            
						            
						            
						            
						             <div class="form-group">
						              <label for="applyNum" class="col-lg-2 control-label">申请金额</label>
						              <div class="col-lg-10">
						                <input type="text" class="form-control" id="applyNum" name="applyNum" placeholder="单位：万元" />
						              </div>
						            </div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					        <input type="submit" class="btn btn-primary" value="申请" />
					      </div>
           			</form>
			    </div>
			  </div>
			</div>
			<!-- 申请 -->

<!--end-->
<div class="footer">Copyright &copy; 2014 南京网博  版权所有  <a href="mailto:cuiyi@itany.com">cuiyi@itany.com</a></div>
</body>
</html>
