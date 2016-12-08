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
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/froala_editor.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function()
	{
		initnews();
		initDxgd();
	});
	</script>
	
  </head>
  
  <body>
    	<div align="center">
    	
    	    <!--主页头部  -->
	    	<div class="div1">
		    		<div style="height: 18px"></div>
	    		<div id="dq" style="width:988px;height: 100%">
		    		<jsp:include page="head_en.jsp" />
	    		</div>
	       </div>
	       
	       <!--主页导航条  -->
	       <div class="div4">
	       		<%@include file="daohang_en.html" %>
	       </div>
	       
	       <!--内容  -->
	       
	       <div style="width:988px;margin-top:10px">
	       
	    	   		<div class="up">
	    	   			<div class="upleft">
	    	   				<%@include file="friendlinks_en.html" %>
	    	   			</div>
	    	   			<div class="upright">
	    	   						
	    	   						
		    	   			<div class="pillar">
								<b class="b1"></b><b class="b2"></b><b class="b3"></b><b class="b2"></b><b class="b4"></b>
								<div class="boxcontent">
								
										<div style="background:rgb(228, 234, 248);border-bottom: 1px dashed #D3D3D3;height: 30px;line-height:30px;text-align: left;font-weight: bold;padding-left: 6px;font-size: 13px;color: rgb(122, 156, 99)">
											Lab Description
										</div>
										
										<div class="jianjie" style="min-height: 650px;">
										 <!-- escape="false"  保证html标签正常输出 -->
										 <s:property value="labdesc" escape="false"/>
										</div>
								</div>
								<b class="b4"></b><b class="b2"></b><b class="b3"></b><b class="b2"></b><b class="b1"></b>
				           </div>
				           <div style="clear: both;"></div>
		    	   			<div class="dxgd" onmouseover="dxgdclearscroll();" onmouseout="dxgdcontinuescroll();">
								<img alt="" src="images/gdtp/11.jpg" style="margin-left: 0px">									
								<img alt="" src="images/gdtp/12.jpg" style="margin-left: 155px">									
								<img alt="" src="images/gdtp/13.jpg" style="margin-left: 310px">									
								<img alt="" src="images/gdtp/14.jpg" style="margin-left: 465px">									
								<img alt="" src="images/gdtp/15.jpg" style="margin-left: 620px">
								<img alt="" src="images/gdtp/16.jpg" style="margin-left: 775px">
								<img alt="" src="images/gdtp/17.jpg" style="margin-left: 930px">
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
