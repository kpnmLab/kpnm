<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript">
	$(function()
	{
		$("#changeversion").click(function()
		{
			$.ajax({  
			            url: 'changeversion',  
			            type: 'post',  
			            data: {version:"ch"},  
			            success: function(data)
			            {
		            		if(data.changeversionresult == 'ok')
			            	{
			            		 location.reload(); 
			            	}
			            }
	                });
		});
	});
	
	
</script>
  </head>
  
  <body>
    <div class="div2">
		    			<img alt="" src="images/logo.png">
		    			<span id="change">
		    				<a id="changeversion" href="javascript:void(0)">中文</a>
		    				<span>|</span>
		    				<a href="#">加入收藏</a>
		    				<span>|</span>
		    				<a href="#">设为首页</a>
		    			</span>
		    		</div>
		    		<div class="div3" >
		    			<img alt="" src="images/keylab6.png">
		    			<span id="denglu">
		    				<a href="#">Login</a>
		    				<a href="#">Register</a>
		    			</span>
		    		</div>
  </body>
</html>
