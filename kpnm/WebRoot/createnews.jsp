<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>创建新闻</title>
    
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
					<span class="s2">创建新闻</span>
				    <hr><hr style="margin-top: -5px">
				</div>
				<div class="sysms" >
				
					<div id="chinese">
							<div class="ct">中文版本 </div>
							<div class="titlepser">
								<div  class="t">
									<span style="margin-left: 3px">新闻标题：</span>
									<input id="titlech" type="text" name="titlech" value="" placeholder="请输入新闻标题"/>
								</div>
								<div class="t">
									<span style="margin-left: 17px">编辑人：</span>
									<input id="publisherch" type="text" name="publisherch" value="" placeholder="请输入新闻编辑人姓名"/>
								</div>
							</div>
							 <section id="editor">
							      <div id='edit' style="margin-top: 2px;">
							      </div>
							  </section>
					</div>
					<div id="english">
						<div class="et">English version</div>
						<div class="titlepser">
								<div class="t">
									<span style="margin-left: 2px">News Title：</span>
									<input id="titleen" type="text" name="titleen" value="" placeholder="input the news title here"/>
								</div>
								<div class="t">
									<span style="margin-left: 10px">Publisher：</span>
									<input id="publisheren" type="text" name="publisheren" value="" placeholder="input the publisher name here"/>
								</div>
							</div>
						<section id="editoren">
						      <div id='editen' style="margin-top: 2px;">
						      </div>
						  </section>
					</div>
					
					<div style="clear: both;height: 120px;background: rgba(137, 238, 223, 0.06);">
						<div style="height: 30px;border:1px solid lightgray;margin-top:6px;line-height:30px">
							是否创建热点新闻：
							<label><input class="cns" name="chotnews" type="radio" value="yes" id='cns0'/>创建 </label> 
							<label><input class="cns" name="chotnews" type="radio" value="no" checked="checked" id='cns1'/>不创建 </label> 
						</div>
						<div id="hnip" style="height: 30px;border:1px solid lightgray;margin-top:6px;line-height:30px;display:none">
							热点新闻图片地址：
							<input id="hnimgp" name="hnimgp" type="text" style="width:480px;height:26px;padding:2px;" />
						</div>
						<div style="height: 30px;margin-top:6px;line-height:30px;text-align:right">
							<span id="savecn">保 存</span>
							<span id="publiccn">发 布</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<form id="chnform" action="cnewslabm" method="post">
			<input type="hidden" name="titlech" id="title_ch" value=""/>
		    <input type="hidden" name="titleen" id="title_en" value=""/>
		    <input type="hidden" name="publisherch" id="publisher_ch" value=""/>
		    <input type="hidden" name="publisheren" id="publisher_en" value=""/>
		    <input type="hidden" name="contenten" id="content_en" value=""/>
		    <input type="hidden" name="contentch" id="content_ch" value=""/>
		    <input type="hidden" name="ischn" id="ischn" value=""/>
		    <input type="hidden" name="hnimglink" id="hnimglink" value=""/>
		    <input type="hidden" name="ispublish" id="ispublish" value="no"/>
		    
		</form>
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
	          
	          $("#cns0").click(function()
	          {
	          	validatechn();
	          });
	           $("#cns1").click(function()
	          {
	          	$("#hnimgp").val('');
				$("#hnip").css('display','none');
	          });
	          
		      $("#savecn").click(function()
			  {
				  var ischn = $('input:radio[name="chotnews"]:checked').val();
				  if('yes' == ischn) validatechn();
				  var hnimglink = $("#hnimgp").val();
				  var titlech = $("#titlech").val();
				  var titleen = $("#titleen").val();
				  var publisherch = $("#publisherch").val();
				  var publisheren = $("#publisheren").val();
				  
				  var contentch = $('#edit').children("div").eq(1).html();
				  var contenten = $('#editen').children("div").eq(1).html();
				  
				  $("#ischn").val(ischn);
				  $("#hnimglink").val(hnimglink);
				  $("#title_ch").val(titlech);
				  $("#title_en").val(titleen);
				  $("#publisher_ch").val(publisherch);
				  $("#publisher_en").val(publisheren);
				  $("#content_en").val(contenten);
				  $("#content_ch").val(contentch);
				  
				  $("#chnform").submit();
				  
			  });
			   $("#publiccn").click(function()
			  {
				  var ischn = $('input:radio[name="chotnews"]:checked').val();
				  if('yes' == ischn) validatechn();
				  var hnimglink = $("#hnimgp").val();
				  var titlech = $("#titlech").val();
				  var titleen = $("#titleen").val();
				  var publisherch = $("#publisherch").val();
				  var publisheren = $("#publisheren").val();
				 
				  var contentch = $('#edit').children("div").eq(1).html();
				  var contenten = $('#editen').children("div").eq(1).html();
				  
				  $("#ischn").val(ischn);
				  $("#hnimglink").val(hnimglink);
				  $("#title_ch").val(titlech);
				  $("#title_en").val(titleen);
				  $("#publisher_ch").val(publisherch);
				  $("#publisher_en").val(publisheren);
				  $("#content_en").val(contenten);
				  $("#content_ch").val(contentch);
				  $("#ispublish").val('yes');
				  
				  $("#chnform").submit();
				  
			  });

			  function validatechn()
			  {
	          	var contentch = $('#edit').children("div").eq(1).html();
				var srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
				var arr = contentch.match(srcReg);
				if(arr)
				{
					var imglink = arr[1];
					$("#hnip").css('display','block');
					$("#hnimgp").val(imglink);
				}
				else
				{
					
					$("input[name='chotnews'][value='yes']").prop("checked",false);  
					$("input[name='chotnews'][value='no']").prop("checked",true);
					$("#hnimgp").val('');
					$("#hnip").css('display','none');
					alert("新闻内容不包含图片，无法创建热点新闻！");
				}
			  }
			 
	      });
	  </script>
  </body>
</html>



