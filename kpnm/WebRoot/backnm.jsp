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
					<li><a href="javascript:void(0)">实验室管理</a>
					</li>
					<li>></li>
					<li><a href="javascript:void(0)">新闻管理</a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				
				<div class="htitle"> 
					<a href="precreatenewslabm" style="text-decoration: none">
						<span class="ht1">
							新建新闻
						</span>
					</a>
					<div class="ht2">
						按关键词：
						<input type="text" class="daoshi" style="height: 22px;padding: 2px" value="<s:property value="keywords" escape="false"/>" placeholder="新闻标题关键字"/>
						
						<a id="aaa" href="javascript:void(0)">搜索</a>
					</div>
				</div>
				
				<div class="nbody">
					<table class="ntable" >
						<tr style="background: rgb(85, 90, 96);height: 30px;color: #fff">
							<th style="width:50% ">标题</th>
							<th style="width:20% ">最后编辑时间</th>
							<th style="width:10% ">状态</th>
							<th style="width:20% ">操作</th>
						</tr>
						<tr><td colspan="4"><div style="height: 6px"></div></td></tr>
						
						<s:iterator value="backnewslist">
							<tr>
								<td>
									<a class="nt" href="detailnews?newsid=<s:property value='id'/>" target="blank"><s:property value="titlech" escape="false"/></a>
								</td>
								<td><s:property value="%{publishdate.toString().substring(0,19)}" escape="false"/></td>
								<td>
								<s:if test='%{status.equals("未发布")}'>
									<span style="color: red"><s:property value="status" escape="false"/></span>
								</s:if>
								<s:if test='%{status.equals("已发布")}'>
									<s:property value="status" escape="false"/>
								</s:if>
								</td>
								<td id="<s:property value='id'/>" style="background: rgba(128, 128, 128, 0.14)">
									<div style="display: inline;"><a id="bj" class="cz" href="editlabm?newsid=<s:property value='id'/>">编 辑</a></div>
									<s:if test='%{status.equals("未发布")}'>
										<div style="display: inline;"><a id="fb" class="cz" href="publishlabm?publishnewsid=<s:property value='id'/>">发 布</a></div>
									</s:if>
									<s:if test='%{status.equals("已发布")}'>
										<div style="display: inline;"><a id="fb" class="czno" href="javascript:void(0)" style="cursor: default;">发 布</a></div>
									</s:if>
									<div id="<s:property value='id'/>" style="display: inline;"><a class="deletenews cz" href="javascript:void(0)" style="color:#56200E">删 除</a></div>
								</td>
							</tr>
							<tr><td colspan="4"><div style="border-bottom: 1px dashed rgba(181, 178, 178, 0.48)"></div></td></tr>
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
					共 <s:property value="totalnewsnum"/> 条新闻，本页为第 <s:property value="%{fnindex+1}"/> 页。
					<s:if test="%{fnindex>0}">
						<a href='backnmlabm?fnindex=<s:property value="%{fnindex-1}"/>'>上一页</a>
					</s:if>
					<s:if test="%{fnindex<(totalpages-1)}">
						<a href='backnmlabm?fnindex=<s:property value="%{fnindex+1}"/>'>下一页</a>
					</s:if>
					<span style="margin-left: 10px">按页码</span>
					<input id="indextext" type="text" class="daoshi" style="height: 20px;padding: 2px;width: 90px;text-align: center;" value="" placeholder="共10页"/>
					<a id="bbb" href="javascript:void(0)">跳转</a>
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
					
					$(".deletenews").click(function()
					{
					    var id = $(this).parent().attr('id');
						if(confirm("确定删除？"))
						{
						  $.ajax({  
						            url: 'deletenews',  
						            type: 'post',  
						            data: {deletenewsid:id},  
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
