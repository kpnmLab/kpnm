<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>创建软件产品</title>
    
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
					<li><a href="javascript:void(0)">软件产品</a>
					</li>
					<li>></li>
					<li><a href="javascript:void(0)">软件产品</a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				<div class="sysjj">
					<img id="jbxximg" src="images/xswyh.png">
					<span class="s2">创建软件产品</span>
				    <hr><hr style="margin-top: -5px">
				</div>
				<div class="sysms" >
				
					<div id="chinese" style="width: 100%">
							<div class="ct">中文(English) 版本(Edition) </div>
							<div class="titlepser">
								<div  class="t">
									<span style="margin-left: 3px;margin-left: 44px">产品名称：</span>
									<input id="namech" type="text" name="namech" value="" placeholder="请输入软件产品名称"/><br>
									<span style="margin-left: 3px">Product Name：</span>
									<input id="nameen" type="text" name="nameen" value="" placeholder="input the software product name here"/>
								</div>
							</div>
							 <section id="editor">
							      <div id='edit' style="margin-top: 2px;">
							      </div>
							  </section>
					</div>
					
					<div style="clear: both"></div>
					<div style="clear: both;height: 40px;background: rgba(137, 238, 223, 0.06);margin-top: 10px">
						<div style="height: 40px;line-height:30px;text-align:right">
							<span id="savecn" style="padding:6px;">创建并保存</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<form id="chnform" action="crjcpingachi" method="post">
			<input type="hidden" name="namech" id="name_ch" value=""/>
		    <input type="hidden" name="nameen" id="name_en" value=""/>
		    <input type="hidden" name="photo" id="photo_" value=""/>
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
		      $("#savecn").click(function()
			  {
				  var namech = $("#namech").val();
				  var nameen = $("#nameen").val();
				  
				  var contentch = $('#edit').children("div").eq(1).html();
				  
					var srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
					var arr = contentch.match(srcReg);
					if(arr)
					{
						var imglink = arr[1];
						$("#photo_").val(imglink);
					}
					else
					{
						alert("请上传一张软件产品图片！");
						return;
					}
					if(namech)
					{
					  $("#name_ch").val(namech);
					  $("#name_en").val(nameen);
					  
					  $("#chnform").submit();
					}
					else
					{
						alert("产品名称不为空！");
						return;
					}
				  
				 
				  
			  });
			 
			 
	      });
	  </script>
  </body>
</html>



