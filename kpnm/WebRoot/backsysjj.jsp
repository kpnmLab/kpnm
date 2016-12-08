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
    
    <title>实验室介绍</title>
    
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
					<li><a href="javascript:(0)">实验室概况</a>
					</li>
					<li>></li>
					<li><a href="javascript:(0)">实验室简介</a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				<div class="jbxia">
					<img id="jbxximg" src="images/jbxx.png">
					<span class="s1">基本信息
					<a id="jbxxxg" href="javascript:(0)">【修改】</a>
					</span>
				    
				    <hr><hr style="margin-top: -5px">
				</div>
				<div class="jbxib">
					<div class="jb1div">
						<ul>
							<li>邮编：435100</li>
							<li>通讯地址(中文)：湖南省湘潭市雨湖区湖南科技大学逸夫楼</li>
							<li>通讯地址(English)：Hunan University of Science and Technology Yifu Building in Hunan province Xiangtan City Yuhu District</li>
							<li>电话：13035310271</li>
							<li>传真：13035310271</li>
							<li>Email：13035310271@qq.com</li>
							
						</ul>
					</div>
					
					<div class="jb2div">
						<p>
							<span>实验室照片：</span>
							<span style="float: right"><a id="ghzp" href="javascript:(0)">【更换】</a></span>
						</p>
						<div class="jbimg">
							<img alt="实验室简介照片" src="images/yb.png">
						</div>
					</div>
					<div style="clear: both;"></div>
				</div>
				<div class="sysjj">
					<img id="jbxximg" src="images/jj.png">
					<span class="s2">实验室简介</span>
				    <hr><hr style="margin-top: -5px">
				</div>
				
				<div class="sysms" >
				
					<div id="chinese">
							<div class="ct">中文版本 <a id="zwbbxg" href="javascript:void(0)">【保存】</a></div>
							 <section id="editor">
							      <div id='edit' style="margin-top: 2px;">
							      	<s:property value="linfo.contentch" escape="false"/>
							      </div>
							  </section>
					</div>
					<div id="english">
						<div class="et">English version <a id="ywbbxg" href="javascript:void(0)">【Save】</a></div>
						<section id="editoren">
						      <div id='editen' style="margin-top: 2px;">
						      	<s:property value="linfo.contenten" escape="false"/>
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
				  var contentch = $('#edit').children("div").eq(1).html();
				  $.ajax({  
				            url: 'updatelc',  
				            type: 'post',  
				            data: {updateinfoid:128,language:'ch',content:contentch},  
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
				  var contenten = $('#editen').children("div").eq(1).html();
				  $.ajax({  
				            url: 'updatelc',  
				            type: 'post',  
				            data: {updateinfoid:128,language:'en',content:contenten},  
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