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
					<li><a href="javascript:void(0)">软件产品</a>
					</li>
					<li>></li>
					<li><a href="javascript:void(0)">软件著作权</a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				
				<div class="htitle"> 
					<a id="cp" href="javascript:void(0)" style="text-decoration: none">
						<span class="ht1">
							新建著作权
						</span>
					</a>
					<div class="ht2">
						按作者：
						<input type="text" class="daoshi" style="height: 22px;padding: 2px" value="<s:property value="backcondition" escape="false"/>" placeholder="请输入著作权作者"/>
						
						<a id="aaa" href="javascript:void(0)">搜索</a>
					</div>
				</div>
				
				<div class="nbody">
					<table class="ntable" >
						<tr style="background: rgb(85, 90, 96);height: 30px;color: #fff">
							<th style="width:16% ">作者</th>
							<th style="width:32% ">软件名称</th>
							<th style="width:15% ">登记号</th>
							<th style="width:15% ">证书号</th>
							<th style="width:10% ">年份</th>
							<th style="width:10% ">操作</th>
						</tr>
						<tr><td colspan="5"><div style="height: 6px"></div></td></tr>
						
						
						<tr id="cp1" style="display: none;">
							<td>
								<input type="text" id="authorch" name="authorch" style="width: 100%;height: 30px;text-align: center;" placeholder="中文作者"/>
								<input type="text" id="authoren" name="authoren" style="width: 100%;height: 30px;text-align: center;margin-top: 4px" placeholder="English Author"/>
							</td>
							<td>
								<input type="text" id="titlech" name="titlech" style="width: 100%;height: 30px;text-align: center;" placeholder="中文名称"/><br>
								<input type="text" id="titleen" name="titleen" style="width: 100%;height: 30px;text-align: center;margin-top: 4px" placeholder="English Name"/>
							</td>
							<td>
								<input type="text" id="registerno" name="registerno" style="width: 100%;height: 30px;text-align: center;"/>
							</td>
							<td>
								<input type="text" id="certificateno" name="certificateno" style="width: 100%;height: 30px;text-align: center;"/>
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
						
						<s:iterator value="softcrlist">
							<tr>
								<td>
									<s:property value="author" escape="false"/>
								</td>
								<td><s:property value="title" escape="false"/></td>
								<td>
								<span style=""><s:property value="registerno" escape="false"/></span>
								</td>
								<td>
								<span style=""><s:property value="certificateno" escape="false"/></span>
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
				<form id="searchform" action="rjzzqachi" method="post">
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
						$("#authorch").val('');
						$("#authoren").val('');
						$("#titlech").val("");
						$("#titleen").val("");
						$("#registerno").val('');
						$("#certificateno").val('');
						$("#time").val('');
						$("#cp1").css('display', 'none');
						$("#cp2").css('display', 'none');
					});
					$("#cpbc").click(function()
					{
						var authorch = $("#authorch").val();
						var authoren = $("#authoren").val();
						var titlech = $("#titlech").val();
						var titleen = $("#titleen").val();
						var registerno = $("#registerno").val();
						var certificateno = $("#certificateno").val();
						var time = $("#time").val();
						$.ajax({  
						            url: 'creatrjzzq',  
						            type: 'post',  
						            data: {authorch:authorch,authoren:authoren,titlech:titlech,titleen:titleen,registerno:registerno,certificateno:certificateno,time:time},  
						            success: function(data)
						            {
					            		if(data.createrjzzqresult == 'ok')
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
						            url: 'deleterjzzq',  
						            type: 'post',  
						            data: {rjzzqid:id},  
						            success: function(data)
						            {
					            		if(data.deleterjzzqresult == 'ok')
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
