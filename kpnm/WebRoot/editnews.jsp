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
    
    <title>新闻编辑</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="css/styleb.css" />
	<link type="text/css" rel="stylesheet" href="css/backsysjj.css" />
	
	
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/froala_editor.min.css" rel="stylesheet" type="text/css">
	
	<style>
        section 
        {
            width: 100%;
            margin: auto;
            text-align: left;
        }
    </style>
	
	<script src="js/libs/jquery-1.11.1.min.js"></script>
   <script src="js/froala_editor.min.js"></script>
  <!--[if lt IE 9]>
    <script src="../js/froala_editor_ie8.min.js"></script>
  <![endif]-->
  <script src="js/plugins/tables.min.js"></script>
  <script src="js/plugins/lists.min.js"></script>
  <script src="js/plugins/colors.min.js"></script>
  <script src="js/plugins/font_family.min.js"></script>
  <script src="js/plugins/font_size.min.js"></script>
  <script src="js/plugins/block_styles.min.js"></script>
  <script src="js/plugins/video.min.js"></script>
  <script src="js/langs/zh_cn.js"></script>
	
	
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
				<div class="sysjj">
					<img id="jbxximg" src="images/xswyh.png">
					<span class="s2">新闻编辑</span>
				    <hr><hr style="margin-top: -5px">
				</div>
				<div class="sysms" >
				
					<div id="chinese">
							<div id="<s:property value="detailnews.id" escape="false"/>" class="ct">中文版本 <a id="zwbbxg" href="javascript:void(0)">【保存】</a></div>
							<div class="titlepser">
								<div  class="t">
									<span style="margin-left: 3px">新闻标题：</span>
									<input id="titlech" type="text" name="titlech" value="<s:property value="detailnews.titlech" escape="false"/>" placeholder="请输入新闻标题"/>
								</div>
								<div class="t">
									<span style="margin-left: 17px">编辑人：</span>
									<input id="publisherch" type="text" name="publisherch" value="<s:property value="detailnews.publishuserch" escape="false"/>" placeholder="请输入新闻编辑人姓名"/>
								</div>
							</div>
							 <section id="editor">
							      <div id='edit' style="margin-top: 2px;">
							      	<s:property value="detailnews.contentch" escape="false"/>
							      </div>
							  </section>
					</div>
					<div id="english">
						<div id="<s:property value="detailnews.id" escape="false"/>" class="et">English version <a id="ywbbxg" href="javascript:void(0)">【Save】</a></div>
						<div class="titlepser">
								<div class="t">
									<span style="margin-left: 2px">News Title：</span>
									<input id="titleen" type="text" name="titleen" value="<s:property value="detailnews.titleen" escape="false"/>" placeholder="input the news title here"/>
								</div>
								<div class="t">
									<span style="margin-left: 10px">Publisher：</span>
									<input id="publisheren" type="text" name="publisheren" value="<s:property value="detailnews.publishuseren" escape="false"/>" placeholder="input the publisher name here"/>
								</div>
							</div>
						<section id="editoren">
						      <div id='editen' style="margin-top: 2px;">
						      	<s:property value="detailnews.contenten" escape="false"/>
						      </div>
						  </section>
					</div>
					
					<div style="clear: both;height: 50px;background: rgba(137, 238, 223, 0.06);"></div>
				</div>
			</div>
		</div>
		 <script>
	      $(function()
	      {
	          $('#edit').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	          $('#editen').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		           imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
		      $("#zwbbxg").click(function()
			  {
			      var id = $(this).parent().attr('id');
				  var contentch = $('#edit').children("div").eq(1).html();
				  var titlech = $("#titlech").val();
				  var publisherch = $("#publisherch").val();
				  
				  $.ajax({  
				            url: 'updatenews',  
				            type: 'post',  
				            data: {updatenewsid:id,language:'ch',content:contentch,title:titlech,publisher:publisherch},  
				            success: function(data)
				            {
			            		if(data.updateresult == 'ok')
				            	{
				            		 alert('保存成功!');
				            	}
				            }
		                });
			  });
			  $("#ywbbxg").click(function()
			  {
			      var id = $(this).parent().attr('id');
				  var contenten = $('#editen').children("div").eq(1).html();
				  var titleen = $("#titleen").val();
				  var publisheren = $("#publisheren").val();
				  $.ajax({  
				            url: 'updatenews',  
				            type: 'post',  
				             data: {updatenewsid:id,language:'en',content:contenten,title:titleen,publisher:publisheren},  
				            success: function(data)
				            {
			            		if(data.updateresult == 'ok')
				            	{
				            		 alert('保存成功!');
				            	}
				            }
		                }); 
			  });
	      });
	  </script>
  </body>
</html>
