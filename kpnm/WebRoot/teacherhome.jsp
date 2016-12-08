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
	<link rel="stylesheet" type="text/css" href="css/teacherhome.css">
	<link rel="stylesheet" type="text/css" href="css/tab.css">
	
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function()
	{
		initnews();
		$('.tabPanel ul li').click(function(){
				$(this).addClass('hit').siblings().removeClass('hit');
				$('.panes>div:eq('+$(this).index()+')').show().siblings().hide();	
			 });

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
									<div class="systemmanagecontent">
									 <!-- escape="false"  保证html标签正常输出 -->
									 <!-- 具体内容-->
									 <div style="width:95%;border:1px solid #CFCFCF;height:auto;margin:0 auto" align="center">
									 		<div class="ttitle">
									 			<a href="teacherhometeam?teacherid=<s:property value='labteacher.id'/>"><s:property value="labteacher.title"/>&nbsp;<s:property value="labteacher.name"/></a>
									 		</div>
									 		<div class="tcontent">
									 			<img alt="" src="<s:property value="labteacher.photo" escape="false"/>">
									 			<s:property value="labteacher.introduce" escape="false"/>
									 		</div>
									 		<div class="binfo">
									 			<span style="margin-left:10px">电话：
									 			<span style='margin-left: 10px'><s:property value="labteacher.phone" escape="false"/></span></span>
									 			<span style="margin-left:20px">Email：
									 			<span style='margin-left: 10px'><s:property value="labteacher.email" escape="false"/></span></span>
									 		</div>
									 </div>
									 
									 <div style="width:95%;border:1px solid #CFCFCF;min-height:400px;margin:0 auto;margin-top: 10px" align="center">
									 		<div class="tabPanel">
										    	<ul style="list-style:none;">
													<li class="hit">科研项目</li>
													<li>研究成果</li>
													<li>发表论文</li>
													<li>其他</li>
											   </ul>
											   <div class="panes" style="padding:6px;padding-top:20px;margin:0 auto;" align="center">
											   		<div class="pane" style="display: block">
											   			<s:property value="labteacher.project" escape="false"/>
											   		</div>
											   		<div class="pane">
											   			<s:property value="labteacher.overproject" escape="false"/>
											   		</div>
											   		<div class="pane">
											   			<s:property value="labteacher.paper" escape="false"/>
											   		</div>
											   		<div class="pane">
											   			<s:property value="labteacher.other" escape="false"/>
											   		</div>
											   </div>
										    </div>
									 </div>
									 
									 
									</div>
							</div>
							<b class="b4"></b><b class="b2"></b><b class="b3"></b><b class="b2"></b><b class="b1"></b>
			           </div>
	    	   			</div>
	    	   		
	    	   		</div>
    	   
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
