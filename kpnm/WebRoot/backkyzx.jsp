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
					<li><a href="javascript:void(0)">成果论著</a>
					</li>
					<li>></li>
					<li><a href="javascript:void(0)">科研专项</a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				
				<div class="htitle"> 
					<a id="cp" href="javascript:void(0)" style="text-decoration: none">
						<span class="ht1">
							新建专项
						</span>
					</a>
					<div class="ht2">
						按所有人：
						<input type="text" class="daoshi" style="height: 22px;padding: 2px" value="<s:property value="backcondition" escape="false"/>" placeholder="请输入论著作者"/>
						
						<a id="aaa" href="javascript:void(0)">搜索</a>
					</div>
				</div>
				
				<div class="nbody">
					<table class="ntable" >
						<tr style="background: rgb(85, 90, 96);height: 30px;color: #fff">
							<th style="width:16% ">获奖人</th>
							<th style="width:33% ">项目获奖及鉴定情况</th>
							<th style="width:29% ">获奖名称</th>
							<th style="width:10% ">时间</th>
							<th style="width:10% ">操作</th>
						</tr>
						<tr><td colspan="5"><div style="height: 6px"></div></td></tr>
						
						
						<tr id="cp1" style="display: none;">
							<td>
								<input type="text" id="author" name="author" style="width: 100%;height: 30px;text-align: center;"/>
							</td>
							<td>
								<input type="text" id="title" name="title" style="width: 100%;height: 30px;text-align: center;"/>
							</td>
							<td>
								<input type="text" id="publish" name="publish" style="width: 100%;height: 30px;text-align: center;"/>
							</td>
							<td>
								<input type="text" id="time" name="time" style="width: 100%;height: 30px;text-align: center;"/>
							</td>
							<td style="background: rgba(128, 128, 128, 0.14)">
								<div style="display: inline;"><a id="cpbc" class="cz" href="javascript:void(0)">保 存</a></div>
								<div  style="display: inline;"><a id="rcp" class="cz" href="javascript:void(0)" style="color:#56200E">删 除</a></div>
							</td>
						
						</tr>
						<tr id="cp2" style="display: none"><td colspan="5"><div style="border-bottom: 1px dashed rgba(181, 178, 178, 0.48)"></div></td></tr>
						
						<s:iterator value="kyzxlist">
							<tr>
								<td>
									<s:property value="person" escape="false"/>
								</td>
								<td><s:property value="title" escape="false"/></td>
								<td>
								<span style=""><s:property value="publication" escape="false"/></span>
								</td>
								<td>
								<span style=""><s:property value="date" escape="false"/></span>
								</td>
								<td id="<s:property value='id'/>" style="background: rgba(128, 128, 128, 0.14)">
									<div id="<s:property value='id'/>" style="display: inline;"><a class="deletenews cz" href="javascript:void(0)" style="color:#56200E">删 除</a></div>
								</td>
							</tr>
							<tr><td colspan="5"><div style="border-bottom: 1px dashed rgba(181, 178, 178, 0.48)"></div></td></tr>
					</s:iterator>	
					</table>
				</div>
				<form id="searchform" action="rakyzxachi" method="post">
					<input id="condition" name="backcondition" type="hidden" value=""/>
				</form>
				<div class="newspage">
				</div>
				<div style="height: 20px"></div>
				
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
					
					$("#cp").click(function()
					{
						$("#cp1").css('display', '');
						$("#cp2").css('display', '');
					});
					$("#rcp").click(function()
					{
						$("#author").val('');
						$("#title").val("");
						$("#publish").val('');
						$("#time").val('');
						$("#cp1").css('display', 'none');
						$("#cp2").css('display', 'none');
					});
					$("#cpbc").click(function()
					{
						var author = $("#author").val();
						var title = $("#title").val();
						var publish = $("#publish").val();
						var time = $("#time").val();
						$.ajax({  
						            url: 'creatkyzx',  
						            type: 'post',  
						            data: {author:author,title:title,publish:publish,time:time},  
						            success: function(data)
						            {
					            		if(data.createcpresult == 'ok')
						            	{
						            		location.reload(); 
						            	}
						            }
				                });
					});
					$(".deletenews").click(function()
					{
					    var id = $(this).parent().attr('id');
						if(confirm("确定删除？"))
						{
						  $.ajax({  
						            url: 'deletekyzx',  
						            type: 'post',  
						            data: {kyzxid:id},  
						            success: function(data)
						            {
					            		if(data.deletecpresult == 'ok')
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
