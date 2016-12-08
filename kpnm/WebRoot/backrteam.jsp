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
    
    <title>后台实验室管理</title>
    
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
					<li><a href="javascript:void(0)">研究队伍</a>
					</li>
					<li>></li>
					<li><a href="javascript:void(0)"><s:property value="rthere"/></a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				
				<div class="htitle"> 
					<a href='precreatrtteam?rttype=<s:property value="rttt"/>' style="text-decoration: none">
						<span class="ht1">
							新建<s:property value="rthere"/>
						</span>
					</a>
				</div>
				
				<div class="nbody">
					<table class="ntable" >
						<tr style="background: rgb(85, 90, 96);height: 30px;color: #fff">
							<th style="width:20% ">姓名</th>
							<th style="width:40% ">职称</th>
							<th style="width:20% ">更改顺序</th>
							<th style="width:20% ">操作</th>
						</tr>
						<tr><td colspan="4"><div style="height: 6px"></div></td></tr>
						
						<s:iterator value="ltlist">
							<tr id="<s:property value='id'/>" class="thisteacher" style="height: 32px">
								<td>
									<a class="nt" href="teacherhometeam?teacherid=<s:property value='id'/>" target="blank"><s:property value="name" escape="false"/></a>
								</td>
								<td><s:property value="title" escape="false"/></td>
								
								<td class="rtjtmove" style="cursor: pointer;">
									<img class="rtjt" alt="上移" src="images/rtjt2.png" style="width: 18px;display: none;">
								</td>
								
								<td style="background: rgba(128, 128, 128, 0.14)">
									<div style="display: inline;"><a id="bj" class="cz" href='editrtteam?editrtid=<s:property value='id'/>&rttype=<s:property value="rttt"/>'>编 辑</a></div>
									<div id="<s:property value='id'/>" style="display: inline;"><a class="deletert cz" href="javascript:void(0)" style="color:#56200E">删 除</a></div>
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
					
					$(".rtjtmove").click(function()
					{
						var thisid = $(this).parent().attr('id');
						var previd = $(this).parent().prev().attr('id');
						
						if(previd)
						{
						
							$.ajax({  
						            url: 'changertsort',  
						            type: 'post',  
						            data: {thisid:thisid,previd:previd},  
						            success: function(data)
						            {
						            }
				                });
				                $(this).parent().prev().insertAfter($(this).parent());
						}
						
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
					
					$(".deletert").click(function()
					{
					    var id = $(this).parent().attr('id');
						if(confirm("确定删除？"))
						{
						  $.ajax({  
						            url: 'deletert',  
						            type: 'post',  
						            data: {deletertid:id},  
						            success: function(data)
						            {
					            		if(data.deleteresult == 'ok')
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
