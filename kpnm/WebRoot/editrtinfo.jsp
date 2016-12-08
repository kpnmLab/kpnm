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
    
    <title>编辑实验室研究员信息</title>
    
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
					<li><a href="javascript:void(0)">研究队伍</a>
					</li>
					<li>></li>
					<li><a href="javascript:void(0)">
						<s:if test='%{rttype.equals("leader")}'>
							实验室领导
						</s:if>
						<s:elseif test='%{rttype.equals("fulltime")}'>
							专职研究员
						</s:elseif>
						<s:elseif test='%{rttype.equals("parttime")}'>
							兼职研究员
						</s:elseif>
						<s:elseif test='%{rttype.equals("visiting")}'>
							客座研究员
						</s:elseif>
						
						<s:else>
							其他
						</s:else>
						
					</a>
					</li>
				</ul>
			</div>
			<div class="main" align="center">
				
					<div class="sysjj">
						<img id="jbxximg" src="images/xswyh.png">
						<span class="s2">修改信息</span>
					    <hr><hr style="margin-top: -5px">
					</div>
					<div class="btinfo">
					<div style="width: 68%;float: left">
					 	<div class="bt1">
					 		姓 名：<input type="text" name="namech" id="namech" value="<s:property value="teacher.namech"/>" placeholder="请输入您的姓名"/>
					 		<span style="margin-left: 10px">Name：</span><input type="text" name="nameen" id="nameen" value='<s:property value="teacher.nameen"/>' placeholder="input your full name here"/>
					 	</div>  
					 	<div style="height: 2px"></div>			
					 	<div class="bt1">
					 		职 称：<input type="text" name="titlech" id="titlech" value='<s:property value="teacher.titlech"/>' placeholder="请输入您的职称"/>
					 		<span style="margin-left: 22px">Title：</span><input type="text" name="titleen" id="titleen" value='<s:property value="teacher.titleen"/>' placeholder="input your title here"/>
					 	</div> 
					 	<div style="height: 2px"></div>		
					 	<div class="bt1">
					 		电 话：<input type="text" name="phone" id="phone" value='<s:property value="teacher.phone"/>' placeholder="请输入您的联系电话"/>
					 		<span style="margin-left: 15px">Email：</span><input type="text" name="email" id="email" value='<s:property value="teacher.email"/>' placeholder="请输入您的常用邮箱"/>
					 	</div>  
					 	
						</div>
						 <div style="width: 20%;float: right;margin-right: 6%;height: 160px;text-align: center;margin-top: 4px;">
					 		<img id="rtimg" src='<s:property value="teacher.photo"/>' style="height: 147px;width: 109px;border: 1px solid rgb(243, 243, 243);vertical-align: sub;"/>
					 	</div>
					 	<div style="clear: both"></div>	 
					 	<div id="savebasicinfo" class="bt1" style="text-align: center;font-weight: bold;">
							<span >保存基本信息</span>
						</div> 			
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
									<div id="<s:property value="detailnews.id" escape="false"/>" class="ct">中文版本 <a id="zwbbxg" class="zwbbxg" href="javascript:void(0)">【保存】</a></div>
									<section id="editordescch">
								      <div class="edit" id='editdescch' style="margin-top: 2px;">
								      	<s:property value="teacher.introducech" escape="false"/>
								      </div>
								   </section>
								   <input id="yuyan" type="hidden" name="language" value="ch"/>
								   <input id="ziduan" type="hidden" name="introducech" value=""/>
								</div>
								<div id="english">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="et">English version <a class="zwbbxg" id="ywbbxg" href="javascript:void(0)">【Save】</a></div>
									<section id="editordescen">
									      <div class="edit" id='editdescen' style="margin-top: 2px;">
									      	<s:property value="teacher.introduceen" escape="false"/>
									      </div>
									  </section>
								   <input id="yuyan" type="hidden" name="language" value="en"/>
								   <input id="ziduan" type="hidden" name="introduceen" value=""/>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane" >
					   			 <div id="chinese">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="ct">中文版本 <a id="zwbbxg" class="zwbbxg" href="javascript:void(0)">【保存】</a></div>
									<section id="editorprojectch">
								      <div class="edit" id='editprojectch' style="margin-top: 2px;">
								      	<s:property value="teacher.projectch" escape="false"/>
								      </div>
								   </section>
								   <input id="yuyan" type="hidden" name="language" value="ch"/>
								   <input id="ziduan" type="hidden" name="projectch" value=""/>
								</div>
								<div id="english">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="et">English version <a class="zwbbxg" id="ywbbxg" href="javascript:void(0)">【Save】</a></div>
									<section class="edit" id="editorprojecten">
									      <div id='editprojecten' style="margin-top: 2px;">
									      	<s:property value="teacher.projecten" escape="false"/>
									      </div>
									  </section>
								   <input id="yuyan" type="hidden" name="language" value="en"/>
								   <input id="ziduan" type="hidden" name="projecten" value=""/>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane">
				   			 <div id="chinese">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="ct">中文版本 <a id="zwbbxg" class="zwbbxg" href="javascript:void(0)">【保存】</a></div>
									<section id="editoroverprojectch">
								      <div class="edit" id='editoverprojectch' style="margin-top: 2px;">
								      	<s:property value="teacher.overProjectch" escape="false"/>
								      </div>
								   </section>
								   <input id="yuyan" type="hidden" name="language" value="ch"/>
								   <input id="ziduan" type="hidden" name="overProjectch" value=""/>
								</div>
								<div id="english">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="et">English version <a class="zwbbxg" id="ywbbxg" href="javascript:void(0)">【Save】</a></div>
									<section id="editoroverprojecten">
									      <div class="edit" id='editoverprojecten' style="margin-top: 2px;">
									      	<s:property value="teacher.overProjecten" escape="false"/>
									      </div>
									  </section>
									  <input id="yuyan" type="hidden" name="language" value="en"/>
								   <input id="ziduan" type="hidden" name="overProjecten" value=""/>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane">
				   			 <div id="chinese">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="ct">中文版本 <a id="zwbbxg" class="zwbbxg" href="javascript:void(0)">【保存】</a></div>
									<section id="editorpaperch">
								      <div class="edit" id='editpaperch' style="margin-top: 2px;">
								      	<s:property value="teacher.paperch" escape="false"/>
								      </div>
								   </section>
								   <input id="yuyan" type="hidden" name="language" value="ch"/>
								   <input id="ziduan" type="hidden" name="paperch" value=""/>
								</div>
								<div id="english">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="et">English version <a class="zwbbxg" id="ywbbxg" href="javascript:void(0)">【Save】</a></div>
									<section id="editorpaperen">
									      <div class="edit" id='editpaperen' style="margin-top: 2px;">
									      	<s:property value="teacher.paperen" escape="false"/>
									      </div>
									  </section>
									  <input id="yuyan" type="hidden" name="language" value="en"/>
								   <input id="ziduan" type="hidden" name="paperen" value=""/>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane">
				   			 <div id="chinese">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="ct">中文版本 <a id="zwbbxg" class="zwbbxg" href="javascript:void(0)">【保存】</a></div>
									<section id="editorotherch">
								      <div class="edit" id='editotherch' style="margin-top: 2px;">
								      	<s:property value="teacher.otherch" escape="false"/>
								      </div>
								   </section>
								   <input id="yuyan" type="hidden" name="language" value="ch"/>
								   <input id="ziduan" type="hidden" name="otherch" value=""/>
								</div>
								<div id="english">
									<div id="<s:property value="detailnews.id" escape="false"/>" class="et">English version <a class="zwbbxg" id="ywbbxg" href="javascript:void(0)">【Save】</a></div>
									<section id="editorotheren">
									      <div class="edit" id='editotheren' style="margin-top: 2px;">
									      	<s:property value="teacher.otheren" escape="false"/>
									      </div>
									  </section>
									  <input id="yuyan" type="hidden" name="language" value="en"/>
								   <input id="ziduan" type="hidden" name="otheren" value=""/>
								</div>
								<div style="clear: both;height: 4px;"></div>
				   		</div>
				   		<div class="pane">
				   			 <div >
									<div class="ct">帅帅美美的头像~  <a class="esaveimg" id="ywbbxg" href="javascript:void(0)" style="float: right">【保存头像】</a></div>
									<section id="editoruppicture">
								      <div class="edit" id='edituppicture' style="margin-top: 2px;">
								      	<p><img class="fr-fin" data-fr-image-preview="false" alt="Image title" src='<s:property value="teacher.photo"/>' width="300"></p>
								      </div>
								   </section>
								   <input id="ziduan" type="hidden" name="photo" value=""/>
							</div>
								<div style="clear: both;height: 50px;"></div>
				   		</div>
				   </div>
					<div style="clear: both;height: 50px;"></div>
				</div>
			</div>
		</div>
		
		 <script>
	      $(function()
	      {
	      
	          $(".esaveimg").click(function()
	          {
	            var id ='<s:property value="teacher.id"/>';
	          	var ziduan = $(this).parent().parent().children("#ziduan").attr("name");
	          	var imgstr = $(this).parent().next().children("div").children("div").eq(1).html();
	          	var srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
				var arr = imgstr.match(srcReg);
				var photo='';
				if(arr)
				{
				   photo = arr[1];
				   $("#rtimg").attr("src",photo);
				   $.ajax({  
				            url: 'editrtinfo',  
				            type: 'post',  
				            data: {editrtinfoid:id,content:photo,ziduan:ziduan},  
				            success: function(data)
				            {
			            		if(data.editresult == 'ok')
				            	{
				            		 alert("头像保存成功"); 
				            	}
				            }
		                });
				}
				else
				{
					alert("头像没有改变哦");
				}
	          });
	          
	      
	      	  $(".zwbbxg").click(function()
	      	  {
	      	  	var language = $(this).parent().parent().children("#yuyan").val();
	      	  	var ziduan = $(this).parent().parent().children("#ziduan").attr("name");
	      	  	var id ='<s:property value="teacher.id"/>';
	      	  	var content = $(this).parent().next().children("div").children("div").eq(1).html();
	      	  	
	      	  	$.ajax({  
				            url: 'editrtinfo',  
				            type: 'post',  
				            data: {editrtinfoid:id,language:language,content:content,ziduan:ziduan},  
				            success: function(data)
				            {
			            		if(data.editresult == 'ok')
				            	{
				            		 alert("保存成功"); 
				            	}
				            }
		                });
	      	  	
	      	  	
	      	  });
	      	  $(".ywbbxg").click(function()
	      	  {
	      	  	var language = $(this).parent().parent().children("#yuyan").val();
	      	  	var ziduan = $(this).parent().parent().children("#ziduan").attr("name");
	      	  	var id ='<s:property value="teacher.id"/>';
	      	  	var content = $(this).parent().next().children("div").children("div").eq(1).html();
	      	  	
	      	  	alert(content);
	      	  	
	      	  	
	      	  });
	      	  
	      	  $("#savebasicinfo").click(function()
	      	  {
	      	  	  var email = $("#email").val();
				  var phone = $("#phone").val();
				  var titlech = $("#titlech").val();
				  var titleen = $("#titleen").val();
				  var namech = $("#namech").val();
				  var nameen = $("#nameen").val();
				  
				  var id ='<s:property value="teacher.id"/>';
				  
				  $.ajax({  
				            url: 'savebasicinfo',  
				            type: 'post',  
				            data: {savebasicinfoid:id,email:email,phone:phone,titlech:titlech,titleen:titleen,namech:namech,nameen:nameen},  
				            success: function(data)
				            {
			            		if(data.saveresult == 'ok')
				            	{
				            		 alert("保存成功"); 
				            	}
				            }
		                });
				  
				  
				  
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



