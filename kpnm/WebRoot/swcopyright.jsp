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
	<link rel="stylesheet" type="text/css" href="css/postgraduate.css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/postgraduate.js"></script>
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
									<div style="height: 10px"></div>
									<div class="search">
										按作者：
										<select class="daoshi">
											<option value="all" selected="selected">所有</option>
											<option value="刘建勋">刘建勋</option>
											<option value="文一凭">文一凭</option>
										</select>
										
										<a id="aaa" href="javascript:void(0)">搜索</a>
									</div>
									
									<table class="biaoti">
										<tr>
											<td style="width: 30%">作者</td>
											<td style="width:30%">软件名称</td>
											<td style="width: 18%">登记号</td>
											<td style="width: 14%">证书号</td>
											<td style="width: 8%">年份</td>
										</tr>
									</table>
									
									<form id="searchform" action="swcopyrightachi" method="post">
										<input id="condition" name="authorname" type="hidden" value=""/>
									</form>
									
									<table class="items">
										<s:iterator value="softcrlist">
											<tr>
												<td style="width: 30%"><s:property value="author" escape="false"/></td>
												<td style="width:30%"><s:property value="title" escape="false"/></td>
												<td style="width: 18%"><s:property value="registerno" escape="false"/></td>
												<td style="width: 14%"><s:property value="certificateno" escape="false"/></td>
												<td style="width: 8%"><s:property value="date" escape="false"/></td>
											</tr>
											<tr style="height: 3px"></tr>
										</s:iterator>
										
									</table>
										
									<div style="clear: both;height: 20px"></div>
							</div>
							<b class="b4"></b><b class="b2"></b><b class="b3"></b><b class="b2"></b><b class="b1"></b>
			           </div>
	    	   			</div>
	    	   		
	    	   		</div>
    	   <script type="text/javascript">
    	   $(document).ready(function()
			{
				$("#aaa").click(function()
				{
					var condition = $(".daoshi").val();
					$("#condition").val(condition);
					$("#searchform").submit();
				});
		
			});
   	   			
    	   </script>
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
