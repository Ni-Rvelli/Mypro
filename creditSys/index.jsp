<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ITing金融</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	$("#choices tr").each(function()
		{
			$(this).find('a').click(function(){
					$(this).parent().find('a').removeClass('cur');
					$(this).addClass('cur');
					//TODO: 异步加载数据
			});
		}
	);
	
});
	function tableSubmit(id){
		alert(id);
		
		
		
		$('#table').submit();
	}
	
</script>
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

        <li><a href="news.do" target="_blank">每日新闻</a></li>

    </ul>
</div>


<div class="wrap bank_list">
	<div class="title clear"><h1 class="fl">产品分类</h1></div>
    <div class="bank_list_tp">
    <form action="" id="table">
      <table width="100%" border="0" cellpadding="0" cellspacing="0" id="choices" >
        <tr class="bank_list_tp1">
          <td width="10%" align="right">产品类型：</td>
<%--          <td width="12%" align="center" valign="top" class="qb"></td>--%>
          <td width="78%" class="txt clear">
          <a href="javascript:;" class="cur" onclick="tableSubmit(type-1)" id="type-1">全部</a>
          <c:forEach items="${productTypeList}" var="productType" varStatus="type">
          <a href="javascript:;" onclick="tableSubmit(type${type.index})" id="type${type.index}">&nbsp;${productType.name}</a>
          </c:forEach>
          </td>
          
        </tr>
        <tr class="bank_list_tp2">
          <td align="right">贷款周期：</td>
<%--          <td align="center" valign="top" class="qb"></td>--%>
          <td class="txt clear">
          <a href="javascript:;" class="cur" onclick="">全部</a>
          <c:forEach items="${loadPeriodList}" var="loadPeriod">
          <a href="javascript:;" onclick="">&nbsp;${loadPeriod.period}</a>
          </c:forEach>
          </td>
        </tr>
        <tr class="bank_list_tp3">
          <td align="right">贷款利率：</td>
<%--          <td align="center" valign="top" class="qb"></td>--%>
          <td class="txt clear"><a href="javascript:;" >全部</a><a href="javascript:;" class="cur">6%以下</a><a href="javascript:;">6%-8%</a><a href="javascript:;">8%-10%</a><a href="javascript:;">10%-12%</a><a href="javascript:;">12%-14%</a><a href="javascript:;">14%以上</a></td>
        </tr>
        <tr class="bank_list_tp4">
          <td align="right">贷款规模：</td>
<%--          <td align="center" valign="top" class="qb"></td>--%>
          <td class="txt clear"><a href="javascript:;" >全部</a><a href="javascript:;" class="cur">100万以下</a><a href="javascript:;">100万-200万</a><a href="javascript:;">200万-300万</a><a href="javascript:;">300万-500万</a><a href="javascript:;">500万-1000万</a><a href="javascript:;">1000万以上</a></td>
        </tr>
      </table>
      </form>
    </div>
</div>
<div class="wrap project_release">
	<div class="project_release_tp">融资产品</div>
	
    <div class="project_release_bt">
    	<ul>
    	<c:forEach items="${productList}" var="product">
    		<li class="clear">
            	<div class="fl"><img src="/resource/${product.product_pic}"  width="75px" height="40px" class="pr_logo" /></div>
                <div class="fl">
                	<dl>
                      <dt>产品名称：<span class="king">${product.productName}</span></dt>
                      <dt>所属银行：${product.company}</dt>                    	
                      <dt>产品类别：${product.productType}</dt>
                      <dt>放贷利率：${product.loadRate}（年化利率）</dt>
                      <dt>放贷金额：${product.reality}</dt>
                      <dt>放贷期限：${product.period}</dt>
                    </dl>
                </div>
                <div class="view_details"><a href="productDetail.do?productNo=${product.productNo}&productName=${product.productName}&differ=1">查看详细</a></div>
            </li>
            
            </c:forEach>
    	</ul>
    </div>
    <div class="newslist_text">
   				<a href="queryAllByPage.do?no=3">首页</a>  &nbsp;&nbsp;&nbsp;&nbsp;   
          		<a href="queryAllByPage.do?pageNo=${pageNo-1 }&no=3">上一页</a> &nbsp;&nbsp;&nbsp;&nbsp;  
          		<a href="queryAllByPage.do?pageNo=${pageNo+1 }&no=3">下一页</a> &nbsp;&nbsp;&nbsp;&nbsp;    
          		<a href="queryAllByPage.do?pageNo=${totalPage }&no=3">尾页</a>    &nbsp;&nbsp;&nbsp;&nbsp; 
          		当前${pageNo }页/共${totalPage }页
    
</div>

s
<div class="footer">Copyright &copy; 2014 南京网博  版权所有   <a href="mailto:cuiyi@itany.com">cuiyi@itany.com</a></div>
</body>
</html>
