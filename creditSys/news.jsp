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
<title>ITing金融-每日新闻</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
 <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
 <script type="text/javascript">

 		function changePageNo(pageNo)
		{
 			alert(pageNo);
			$("#pageNo").val(pageNo);
			
			$("#queryForm").submit();
		}
 </script>
</head>
<body>

<div class="wrap header oauto clear">
    <div class="fr">
    	<a href="#" >
    		当前时间：<span id="time">${time}</span>  						
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

        <li><a href="index.jsp">融资产品</a></li>

        <li><a href="news.do" target="_blank"  class="cur">每日新闻</a></li>
    </ul>
</div>


<div class="wrap font16">首页 >> 每日新闻
	<form action="news.do" id="queryForm">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;
				<input type="text"  id="newsTitle" name="newsTitle" value="${newsTitle}"/><input type="submit" value="搜索" />
				<input id="pageNo" type="hidden" name="pageNo" value="1">
	</form>
</div>

<c:forEach items="${newsList}" var="newsfirst" begin="1" end="1">
<div class="wrap">
<div class="title clear"><h1 class="fl">今日头条</h1></div>
	<div class="salon_top clear">
    	<div class="fl">
        	<ul id="foo1">
            	<li><img src="images/3(31).jpg" width="613" height="459" /></li>
            </ul>
            <div id="pager1" class="pager"></div>
        </div>
        <div class="fr">
        	<div class="bt"><h1><a href="" title="察看详情">${newsfirst.title}</a></h1>
            	<div class="hudongsalon_success">
            		<span class="fe4800">（成功举办）</span>
                </div>
            </div>
            <div class="in clear">
                <div class="time">时间：${newsfirst.createTime}</div>
            </div>
            <div class="txt">${newsfirst.context}</div>
        </div>
    </div>
</div>
</c:forEach>

<div class="wrap">
	<div class="title clear"><h1 class="fl">其他新闻</h1></div>
    <div class="salon">
    	<ul>
    	<c:forEach items="${newsList}" var="news">
        	<li class="clear">

            	<div class="fl"><img src="/resource/${news.newFileName}" /></div>

                <div class="fl">
                	<div class="salon_title clear"><div class="fl"><a href="newsDetail.do?id=${news.id}" title="察看详情">${news.title}</a><span class="fe4800">（已结束）</span></div><div class="fr">日期：${news.createTime}</div></div>
                    <div class="salon_in">${news.context}</div>
                </div>
            </li>
    	</c:forEach>
        </ul>
        <div class="newslist_text">
       		 <tr>
        		<td colspan="8">
        				<input type="button" onclick="changePageNo(1)" value="首页" />
        				<input type="button" onclick="changePageNo(${pageNo-1 })" value="上一页" />
        				<input type="button" onclick="changePageNo(${pageNo+1 })" value="下一页" />
        				<input type="button" onclick="changePageNo(${totalPage })" value="尾页" />
          		 		当前${pageNo}页/共${totalPage}页
          		</td>
        	</tr>
        </div>
    </div>
</div>
<div class="footer">Copyright &copy; 2014 南京网博  版权所有   <a href="mailto:cuiyi@itany.com">cuiyi@itany.com</a></div>

</body>
</html>
