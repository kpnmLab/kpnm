<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>知识处理与网络化制造湖南省教育厅重点实验室</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/detailnews.css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
		<style type="text/css">
	table,tr,td{
		border: none;
	}
	
	</style>
	<script type="text/javascript">
	$(document).ready(function()
	{
		initnews();

	});
	</script>
	
  </head>
  
  <body>
    	<div align="center" style="height: auto">
    	
    	    <!--主页头部  -->
	    	<div class="div1">
		    		<div style="height: 18px"></div>
	    		<div id="dq" style="width:988px;height: 100%">
		    		<jsp:include page="head.jsp" />
	    		</div>
	       </div>
	       
	       <!--主页导航条  -->
	       <div class="div4">
	       		<%@include file="daohang.html" %>
	       </div>
	       
	       <!--内容  -->
	       
	       <div style="width:988px;margin-top:10px;height: auto">
	       
	    	   		<div class="up">
	    	   			<div class="upleft">
	    	   				<%@include file="friendlinks.html" %>
	    	   			</div>
	    	   			<div class="upright">
	    	   						
	    	   						
	    	   			<div class="pillar">
							<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b2"></b><b class="b4"></b>
							<div class="boxcontent" style="min-height:856px">
							
									<%@include file="here.html" %>
									<div class="systemmanagecontent">
									 <!-- escape="false"  保证html标签正常输出 -->
									 <!-- 具体内容-->
									 <div style="height: 20px"></div>
									 <s:iterator value="softplist">
									    <span style="margin-top:10px;margin-left: 30px;width: auto;display: block;">
										    <img src="images/point.gif" style="vertical-align: baseline;width: 12px;margin-right: 4px"/><a href="<s:property value='photo'/>" target="blank"><s:property value='name'/></a>	
										</span>
									 </s:iterator>
									 
									<div style="clear: both;height: 20px"></div>
									</div>
							</div>
							<b class="b4"></b><b class="b2"></b><b class="b3"></b><b class="b2"></b><b class="b1"></b>
			           </div>
	    	   			</div>
	    	   		
	    	   		</div>
    	   
    	   <div style="clear: both"></div>
    	   </div>
    	   
    	  <div id="dbbj">
    	   <div class="dibu">
    	   		Copyright@ 2016 版权所有 知识处理与网络化制造湖南省教育厅重点实验室
    	   </div>
    	  </div>
    	</div>
    	
    	
    	
  </body>
</html>
