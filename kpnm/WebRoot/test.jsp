<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/tab.css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

	 <script type="text/javascript">
	 	$(document).ready(function()
		{ 
		
			 $('.tabPanel ul li').click(function(){
				$(this).addClass('hit').siblings().removeClass('hit');
				$('.panes>div:eq('+$(this).index()+')').show().siblings().hide();	
			 });
			 
		});
	 
	 </script>
  </head>
  
  <body>
    <div class="tabPanel" style="margin-top:10px">
    	<ul>
			<li class="hit">翻译经验</li>
			<li>评价详情</li>
			<li>成交记录</li>
			<li>给Ta留言</li>
	   </ul>
	   <div class="panes">
	   		<div class="pane">
	   		1
	   		</div>
	   		<div class="pane">
	   		2
	   		</div>
	   		<div class="pane">
	   		3
	   		</div>
	   		<div class="pane">
	   		4
	   		</div>
	   </div>
    </div>
  </body>
</html>
