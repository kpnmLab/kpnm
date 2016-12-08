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
    
    <title>创建实验室研究员</title>
    
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
	
	
	
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/froala_editor.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/tab.css">
	<link rel="stylesheet" type="text/css" href="css/precreatrt.css">
	
	<style>
        section 
        {
            width: 100%;
            margin: auto;
            text-align: left;
        }
    </style>
	
  </head>
  
  <body>
   <div class="m-right">
			<div class="right-nav">
				<ul>
					<li><img src="images/home.png"></li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="javascript:void(0)">研究队伍</a>
					</li>
					<li>></li>
					<li><a href="javascript:void(0)"><s:property value="rthere"/></a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				<div class="sysjj">
					<img id="jbxximg" src="images/xswyh.png">
					<span class="s2">创建<s:property value="rthere"/></span>
				    <hr><hr style="margin-top: -5px">
				</div>
				<div class="btinfo">
				 	<div style="width: 68%;float: left">
					 	<div class="bt1">
					 		姓 名：<input type="text" name="namech" id="namech" value="" placeholder="请输入您的姓名"/>
					 		<span style="margin-left: 10px">Name：</span><input type="text" name="nameen" id="nameen" value="" placeholder="input your full name here"/>
					 	</div>  
					 	<div style="height: 2px"></div>			
					 	<div class="bt1">
					 		职 称：<input type="text" name="titlech" id="titlech" value="" placeholder="请输入您的职称"/>
					 		<span style="margin-left: 22px">Title：</span><input type="text" name="titleen" id="titleen" value="" placeholder="input your title here"/>
					 	</div> 
					 	<div style="height: 2px"></div>		
					 	<div class="bt1">
					 		电 话：<input type="text" name="phone" id="phone" value="" placeholder="请输入您的联系电话"/>
					 		<span style="margin-left: 15px">Email：</span><input type="text" name="email" id="email" value="" placeholder="请输入您的常用邮箱"/>
					 	</div>  
				 	</div>
				 	<div style="width: 20%;float: right;margin-right: 6%;height: 160px;text-align: center;margin-top: 4px;">
				 		<img id="rtimg" src="" style="height: 147px;width: 109px;border: 1px solid rgb(243, 243, 243);vertical-align: sub;"/>
				 	</div>
				 	<div style="clear: both"></div>			
				 </div>
				<div class="sysms" style="">
					
				
				
					<div class="tabPanel">
				    	<ul style="list-style:none;">
							<li class="hit" style="list-style:none;">我的介绍</li>
							<li style="list-style:none;">科研项目</li>
							<li style="list-style:none;">研究成果</li>
							<li style="list-style:none;">发表论文</li>
							<li style="list-style:none;">其他</li>
							<li style="list-style:none;">我的头像</li>
					   </ul>
				   </div>
				   
				   <div class="panes" style="padding:1px;padding-top:20px;margin:0 auto;" align="center">
				   		
				   		
				   		<div class="pane" style="display: block">
					   			 <div id="chinese">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="ct">中文版本 </div>
									<section id="editordescch">
								      <div id='editdescch' style="margin-top: 2px;">
								      </div>
								   </section>
								</div>
								<div id="english">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="et">English version</div>
									<section id="editordescen">
									      <div id='editdescen' style="margin-top: 2px;">
									      </div>
									  </section>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane">
					   			 <div id="chinese">
									<div class="ct">中文版本 </div>
									<section id="editorprojectch">
								      <div id='editprojectch' style="margin-top: 2px;">
								      </div>
								   </section>
								</div>
								<div id="english">
									<div class="et">English version</div>
									<section id="editorprojecten">
									      <div id='editprojecten' style="margin-top: 2px;">
									      </div>
									  </section>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane">
				   			 <div id="chinese">
									<div class="ct">中文版本 </div>
									<section id="editoroverprojectch">
								      <div id='editoverprojectch' style="margin-top: 2px;">
								      </div>
								   </section>
								</div>
								<div id="english">
									<div class="et">English version</div>
									<section id="editoroverprojecten">
									      <div id='editoverprojecten' style="margin-top: 2px;">
									      </div>
									  </section>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane">
				   			 <div id="chinese">
									<div class="ct">中文版本 </div>
									<section id="editorpaperch">
								      <div id='editpaperch' style="margin-top: 2px;">
								      </div>
								   </section>
								</div>
								<div id="english">
									<div class="et">English version</div>
									<section id="editorpaperen">
									      <div id='editpaperen' style="margin-top: 2px;">
									      </div>
									  </section>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane">
				   			 <div id="chinese">
									<div class="ct">中文版本 </div>
									<section id="editorotherch">
								      <div id='editotherch' style="margin-top: 2px;">
								      </div>
								   </section>
								</div>
								<div id="english">
									<div class="et">English version</div>
									<section id="editorotheren">
									      <div id='editotheren' style="margin-top: 2px;">
									      </div>
									  </section>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane">
				   			 <div >
									<div class="ct">请上传一张帅帅美美的头像吧~  <a id="zwbbxg" href="javascript:void(0)" style="float: right">【显示头像】</a></div>
									<section id="editoruppicture">
								      <div id='edituppicture' style="margin-top: 2px;">
								      </div>
								   </section>
							</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   </div>
					
						
				   	<div style="clear: both;background: rgba(137, 238, 223, 0.06);height: 44px;">
						
						<div style="height: 30px;margin-top:6px;text-align:right;margin-right: 20px;padding: 10px;">
							<span id="savecn" style="padding:6px;">创建并保存</span>
						</div>
					</div>
					
				</div>
				<div style="clear: both;height: 50px;"></div>
			</div>
		</div>
	     
	     <form id="chnform" action="creatertteam" method="post">
	     
			<input type="hidden" name="namech" id="name_ch" value=""/>
			<input type="hidden" name="nameen" id="name_en" value=""/>
		 
		    <input type="hidden" name="titlech" id="title_ch" value=""/>
		    <input type="hidden" name="titleen" id="title_en" value=""/>
		 
		    <input type="hidden" name="phone" id="phoneall" value=""/>
		 
		    <input type="hidden" name="email" id="emailall" value=""/>
		    
		    <input type="hidden" name="introducech" id="introduce_ch" value=""/>
		    <input type="hidden" name="introduceen" id="introduce_en" value=""/>

		    <input type="hidden" name="projectch" id="project_ch" value=""/>		 
		    <input type="hidden" name="projecten" id="project_en" value=""/>
		    
		    <input type="hidden" name="overProjectch" id="overProject_ch" value=""/>
		    <input type="hidden" name="overProjecten" id="overProject_en" value=""/>
		    
		    <input type="hidden" name="paperch" id="paper_ch" value=""/>
		    <input type="hidden" name="paperen" id="paper_en" value=""/>
		    
		    <input type="hidden" name="otherch" id="other_ch" value=""/>
		    <input type="hidden" name="otheren" id="other_en" value=""/>
		    
		    
		    
		    <input type="hidden" name="photo" id="photoall" value=""/>
		    <input type="hidden" name="cttype" id='cttype' value='<s:property value="rttype"/>'/>
		    
		</form>
	     
	     
		 <script>
	      $(function()
	      {
	      	  
	      	  
	      	  $("#zwbbxg").click(function()
	      	  {
	      	      var imgstr = $('#edituppicture').children("div").eq(1).html();
	      	  	  var srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
				  var arr = imgstr.match(srcReg);
				  var photo='';
				  if(arr)
				  {
				  	  photo = arr[1];
				  	  $("#rtimg").attr("src",photo);
				  }
				  else
				  {
				  	  alert('请先上传一张美美的个人头像吧');
				  } 
	      	  });
	      
	          $("#savecn").click(function()
			  {
				  
				  var imgstr = $('#edituppicture').children("div").eq(1).html();
				  
				  var srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
				  var arr = imgstr.match(srcReg);
				  var photo='';
				  if(arr)
				  {
				  	  photo = arr[1];
				  }
				  
				  
				  var email = $("#email").val();
				  var phone = $("#phone").val();
				  var titlech = $("#titlech").val();
				  var titleen = $("#titleen").val();
				  var namech = $("#namech").val();
				  var nameen = $("#nameen").val();
				  
				  var introducech = $('#editdescch').children("div").eq(1).html();
				  var introduceen = $('#editdescen').children("div").eq(1).html();
				  var projectch = $('#editprojectch').children("div").eq(1).html();
				  var projecten = $('#editprojecten').children("div").eq(1).html();
				  var overProjectch = $('#editoverprojectch').children("div").eq(1).html();
				  var overProjecten = $('#editoverprojecten').children("div").eq(1).html();
				  var paperch = $('#editpaperch').children("div").eq(1).html();
				  var paperen = $('#editpaperen').children("div").eq(1).html();
				  var otherch = $('#editotherch').children("div").eq(1).html();
				  var otheren = $('#editotheren').children("div").eq(1).html();
				  
				  $("#emailall").val(email);
				  $("#phoneall").val(phone);
				  $("#title_ch").val(titlech);
				  $("#title_en").val(titleen);
				  $("#name_ch").val(namech);
				  $("#name_en").val(nameen);
				  $("#introduce_ch").val(introducech);
				  $("#introduce_en").val(introduceen);
				  $("#project_ch").val(projectch);
				  $("#project_en").val(projecten);
				  $("#overProject_ch").val(overProjectch);
				  $("#overProject_en").val(overProjecten);
				  $("#paper_ch").val(paperch);
				  $("#paper_en").val(paperen);
				  $("#other_ch").val(otherch);
				  $("#other_en").val(otheren);
				  $("#photoall").val(photo);
				  
				  $("#chnform").submit();$("#chnform").submit();$("#chnform").submit();
			  });
	      
	      
	      	  $('.tabPanel ul li').click(function(){
					$(this).addClass('hit').siblings().removeClass('hit');
					$('.panes>div:eq('+$(this).index()+')').show().siblings().hide();	
				 });
				 
			   $('#edituppicture').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          }); 
	           
	           $('#editdescch').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	           $('#editdescen').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	          $('#editprojectch').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	           $('#editprojecten').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	          $('#editoverprojectch').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	          $('#editpaperch').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	          $('#editotherch').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		           imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	          $('#editoverprojecten').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	          $('#editpaperen').editable({
		          inlineMode: false, 
		          alwaysBlank: true,
		          language: "zh_cn",
		          allowedImageTypes: ["jpeg", "jpg", "png", "gif"],
		          imageButtons: ["floatImageLeft", "floatImageNone", "floatImageRight", "linkImage", "removeImage"],
		          imageUploadURL: 'uploadimg',//上传到本地服务器
		          imageUploadParam:"imgfile"
	          });
	          $('#editotheren').editable({
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
				  $("#hnimgp").val(hnimglink);
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
				  $("#hnimgp").val(hnimglink);
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



