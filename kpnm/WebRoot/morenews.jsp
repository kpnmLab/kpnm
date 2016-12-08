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
										按关键词：
										<input type="text" class="daoshi" style="height: 22px;padding: 2px" value="<s:property value="keywords" escape="false"/>" placeholder="新闻标题关键字"/>
										
										<a id="aaa" href="javascript:void(0)">搜索</a>
									</div>
									<form id="searchform" action="morenews" method="post">
										<input id="condition" name="keywords" type="hidden" value=""/>
									</form>
									<div style="min-height: 610px;border-bottom: 1px dashed rgba(162, 194, 215, 0.73);">
										<table class="news" style="border: none;">
											<s:iterator value="morenewslist">
												<tr>
													<td style="width: 80%;text-align: left;border: none;">
														<div style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;width: 520px;height: 27px;">
															 <img src="images/new_img.gif" style="vertical-align: baseline;width: 12px;margin-right: 4px"/><a href="detailnews?newsid=<s:property value='id'/>" target="blank"><s:property value='titlech'/></a>	
														</div>
													</td>
													<td style="width:20%;text-align: center;line-height: 25px;color:#4E4B4B;border: none;">
														<s:property value='%{publishdate.toString().substring(0,10)}'/>
													</td>
												</tr>
											</s:iterator>
										</table>
									</div>
									<div class="newspage">
										共<s:property value="totalnewsnum"/>条新闻，本页为第<s:property value="%{fnindex+1}"/>页。
										<s:if test="%{fnindex>0}">
											<a href='morenews?fnindex=<s:property value="%{fnindex-1}"/>'>上一页</a>
										</s:if>
										<s:if test="%{fnindex<(totalpages-1)}">
											<a href='morenews?fnindex=<s:property value="%{fnindex+1}"/>'>下一页</a>
									    </s:if>
										<span>按页码</span>
										<input id="indextext" type="text" class="daoshi" style="height: 20px;padding: 2px;width: 80px;text-align: center;" value="<s:property value="keywords" escape="false"/>" placeholder="共<s:property value="totalpages"/>页"/>
										<a id="bbb" href="javascript:void(0)">跳转</a>
									</div>
									<form id="linkform" action="morenews">
										<input id="linkindex" name="fnindex" type="hidden" value="0"/>
									</form>
										
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
