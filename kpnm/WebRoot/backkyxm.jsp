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
					<li><a href="javascript:void(0)">科学研究</a>
					</li>
					<li>></li>
					<li><a href="javascript:void(0)">科研项目</a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				
				<div class="htitle"> 
					<a id="cp" href="javascript:void(0)" style="text-decoration: none">
						<span class="ht1">
							新建科研项目
						</span>
					</a>
					<div class="ht2">
						按负责人：
						<input type="text" class="daoshi" style="height: 22px;padding: 2px" value="<s:property value="backcondition" escape="false"/>" placeholder="请输入项目负责人"/>
						
						<a id="aaa" href="javascript:void(0)">搜索</a>
					</div>
				</div>
				
				<div class="nbody">
					<table class="ntable" >
						<tr style="background: rgb(85, 90, 96);height: 30px;color: #fff">
							<th style="width:32% ">项目名称</th>
							<th style="width:10% ">负责人</th>
							<th style="width:33% ">项目来源</th>
							<th style="width:15% ">起始时间</th>
							<th style="width:10% ">操作</th>
						</tr>
						<tr><td colspan="5"><div style="height: 6px"></div></td></tr>
						
						
						<tr id="cp1" style="display: none;">
							<td>
								<input type="text" id="namech" name="namech" style="width: 100%;height: 30px;text-align: center;" placeholder="中文名称"/>
								<input type="text" id="nameen" name="nameen" style="width: 100%;height: 30px;text-align: center;margin-top: 4px" placeholder="English Name"/>
							</td>
							<td>
								<input type="text" id="leadernamech" name="leadernamech" style="width: 100%;height: 30px;text-align: center;" placeholder="中文"/><br>
								<input type="text" id="leadernameen" name="leadernameen" style="width: 100%;height: 30px;text-align: center;margin-top: 4px" placeholder="English"/>
							</td>
							<td>
								<input type="text" id="fromch" name="fromch" style="width: 100%;height: 30px;text-align: center;" placeholder="中文"/><br/>
								<input type="text" id="fromen" name="fromen" style="width: 100%;height: 30px;text-align: center;margin-top: 4px" placeholder="English"/>
							</td>
							<td>
								<input type="text" id="date" name="date" style="width: 100%;height: 30px;text-align: center;"/>
							</td>
							<td style="background: rgba(128, 128, 128, 0.14)">
								<div style="display: inline;"><a id="cpbc" class="cz" href="javascript:void(0)">保 存</a></div>
								<div  style="display: inline;"><a id="rcp" class="cz" href="javascript:void(0)" style="color:#56200E">删 除</a></div>
							</td>
						
						</tr>
						<tr id="cp2" style="display: none"><td colspan="5"><div style="border-bottom: 1px dashed rgba(181, 178, 178, 0.48)"></div></td></tr>
						
						<s:iterator value="projectlist">
							<tr>
								<td>
									<s:property value="name" escape="false"/>
								</td>
								<td><s:property value="leadername" escape="false"/></td>
								<td>
								<span style=""><s:property value="from" escape="false"/></span>
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
				<form id="searchform" action="kyxmsr" method="post">
					<input id="condition" name="condition" type="hidden" value=""/>
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
						$("#leadernamech").val('');
						$("#leadernameen").val('');
						$("#namech").val("");
						$("#nameen").val("");
						$("#fromch").val('');
						$("#fromen").val('');
						$("#date").val('');
						$("#cp1").css('display', 'none');
						$("#cp2").css('display', 'none');
					});
					$("#cpbc").click(function()
					{
						var leadernamech = $("#leadernamech").val();
						var leadernameen = $("#leadernameen").val();
						var namech = $("#namech").val();
						var nameen = $("#nameen").val();
						var fromch = $("#fromch").val();
						var fromen = $("#fromen").val();
						var date = $("#date").val();
						$.ajax({  
						            url: 'creatkyxm',  
						            type: 'post',  
						            data: {leadernamech:leadernamech,leadernameen:leadernameen,namech:namech,nameen:nameen,fromch:fromch,fromen:fromen,date:date},  
						            success: function(data)
						            {
					            		if(data.createkyxmresult == 'ok')
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
						            url: 'deletekyxm',  
						            type: 'post',  
						            data: {deletekyxmrid:id},  
						            success: function(data)
						            {
					            		if(data.deletekyxmresult == 'ok')
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
