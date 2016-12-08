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
    
    <title>制度管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="css/styleb.css" />
	<link type="text/css" rel="stylesheet" href="css/backnm.css" />
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
  </head>
  
  <body>
   <div class="m-right">
			<div class="right-nav">
				<ul>
					<li><img src="images/home.png"></li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="javascript:void(0)">软件产品</a>
					</li>
					<li>></li>
					<li><a href="javascript:void(0)">软件产品</a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				
				<div class="htitle"> 
					<a href='createzjcpachi' style="text-decoration: none">
						<span class="ht1">
							新建产品
						</span>
					</a>
				</div>
				
				<div class="nbody">
					<table class="ntable" >
						<tr style="background: rgb(85, 90, 96);height: 30px;color: #fff">
							<th style="width:50% ">产品名称</th>
							<th style="width:30% ">产品图片</th>
							<th style="width:20% ">操作</th>
						</tr>
						<tr><td colspan="4"><div style="height: 6px"></div></td></tr>
						
						<s:iterator value="softplist">
							<tr id="<s:property value='id'/>" class="thisteacher" style="height: 32px">
								<td>
									<a class="nt" href="<s:property value="photo" escape="false"/>" target="blank"><s:property value="name" escape="false"/></a>
								</td>
								<td>
									<img src="<s:property value="photo" escape="false"/>" style="width: 100px"/>
								</td>
								
								<td style="background: rgba(128, 128, 128, 0.14)">
									<div style="display: inline;"><a id="bj" class="cz" href='editrjcpachi?editrjcpid=<s:property value="id"/>'>编 辑</a></div>
									<div id="<s:property value='id'/>" style="display: inline;"><a class="deletezd cz" href="javascript:void(0)" style="color:#56200E">删 除</a></div>
								</td>
							</tr>
						</s:iterator>
						
					</table>
				</div>
				
				<form id="searchform" action="backnmlabm" method="post">
					<input id="condition" name="keywords" type="hidden" value=""/>
				</form>
				<form id="linkform" action="backnmlabm">
					<input id="linkindex" name="fnindex" type="hidden" value="0"/>
				</form>
				<div class="newspage">
				</div>
				<div style="height: 20px"></div>
				
			</div>
		</div>
		 <script type="text/javascript">
	    	   $(document).ready(function()
				{
					$(".thisteacher").mouseover(function()
					{
						$(".thisteacher").css('background-color','');
						$(this).css('background-color','rgba(128, 128, 128, 0.18)');
						
						$(".rtjt").css('display','none');
						$(this).find('img').css('display','inline');
						
					});
				
					$("#aaa").click(function()
					{
						var condition = $(".daoshi").val();
						$("#condition").val(condition);
						$("#searchform").submit();
					});
					
					$("#bbb").click(function()
					{
						var indextext = $("#indextext").val();
						var reg = new RegExp("^[0-9]*$");
						if(!reg.test(indextext))
						{
					       indextext = 1;
					    }
						$("#linkindex").val(indextext-1);
						$("#linkform").submit();
					});
					
					$(".deletezd").click(function()
					{
					    var id = $(this).parent().attr('id');
						if(confirm("确定删除？"))
						{
						  $.ajax({  
						            url: 'deleterjcp',  
						            type: 'post',  
						            data: {deleterjcpid:id},  
						            success: function(data)
						            {
					            		if(data.deleterjcpresult == 'ok')
						            	{
						            		 location.reload(); 
						            	}
						            }
				                });
						}
					});
				});
   	     </script>
  </body>
</html>
