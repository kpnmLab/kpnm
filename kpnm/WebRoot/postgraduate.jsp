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
										按条件：
										<select class="searchcondition" onchange="changeselect();">
											<option value="daoshi">导师</option>
											<option value="rxnf" selected="selected">入学年份</option>
											<option value="bystatus">毕业状态</option>
										</select>
										<select class="daoshi" style="display: none;">
											<option value="" selected="selected">无</option>
											<s:iterator value="teachers">
												<option value='<s:property value="id"/>' style=""><s:property value="name"/></option>
											</s:iterator>
										</select>
										<select class="rxnf" >
											<option value="init">默认</option>
											<option value="2014">2014</option>
											<option value="2015">2015</option>
										</select>
										<select class="bystatus" style="display: none">
											<option value="N">未毕业</option>
											<option value=Y>已毕业</option>
										</select>
										<a id="aaa" href="javascript:void(0)">搜索</a>
									</div>
									
									<table class="biaoti">
										<tr>
											<td style="width: 100px">姓名</td>
											<td style="width:150px">入学年份</td>
											<td style="width: 150px">导师</td>
											<td >毕业状态</td>
										</tr>
									</table>
									
									<form id="searchform" action="postgraduateteam" method="post">
										<input id="condition" name="condition" type="hidden" value=""/>
										<input id="selection" name="selection" type="hidden" value=""/>
									</form>
									
									<s:iterator value="lpglist">
										<div class="researchteam">
											 <!-- 具体内容-->
											 	<div class="menname">
											 		<table class="stuinfo">
														<tr>
															<td style="width: 100px"><s:property value="name" escape="false"/></td>
															<td style="width: 150px"><s:property value="grade" escape="false"/></td>
															<td style="width: 150px"><a href="teacherhometeam?teacherid=<s:property value="tutorid"/>" target="blank"><s:property value="tutorname" escape="false"/></a></td>
															<s:if test='isGraduate=="N"'><td>未毕业</td></s:if>
															<s:elseif test='isGraduate=="Y"'><td>已毕业</td></s:elseif>
															
														</tr>
													</table>
											 	</div>
											 	<div class="menpicture">
											 		<img class="menimg" src="<s:property value="photo"/>"/>
											 	</div>
											 	<div class="fenge"></div>
											 	<div class="menintroduce">
											 		<p>
											 			<s:property value="introduce"/>
													</p>
											 	</div>
											</div>	
									</s:iterator>
									
											
									
									
									
									<div style="clear: both;height: 20px"></div>
							</div>
							<b class="b4"></b><b class="b2"></b><b class="b3"></b><b class="b2"></b><b class="b1"></b>
			           </div>
	    	   			</div>
	    	   		
	    	   		</div>
    	   <script type="text/javascript">
    	   $(document).ready(function()
			{
				$(".menintroduce").each(function(i){
				    var divH = $(this).height();
				    var $p = $("p", $(this)).eq(0);
				    while ($p.outerHeight() > divH) {
				        $p.text($p.text().replace(/(\s)*([a-zA-Z0-9]+|\W)(\.\.\.)?$/, "..."));
				    };
				});
				$("#aaa").click(function()
				{
					search();
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
