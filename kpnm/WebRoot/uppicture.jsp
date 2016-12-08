<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上传个人头像</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
<style type="text/css">
	.word{
	font-family:Arial,Helvetica,sans-serif;
	font-size:13px;
	vertical-align:middle;
	color:gray;
	font-weight: bold;
}


</style>
<script type="text/javascript">
	$(document).ready(function()
	{
		$(".btn_grey").click(function()
		{   
			//$(window.parent.window.document.getElementById("myimg")).attr("src","identifycode?"+Math.random()); 
			//alert($("#picturefile").val());
			//alert(window.parent.window.document.getElementById('myimg').src);
			//window.parent.window.document.getElementById('myimg').src='identifycode?'+Math.random();
			var file = $("#picturefile").val();
			$("#imgname").val($("#picturefile").val());
			if(file.trim().length == 0)
			{
				alert("请选择一张图片哦");
				return false;
			}
			var postfix = file.substr(file.lastIndexOf(".") + 1);
		    if((postfix.toLowerCase() != 'jpeg') && (postfix.toLowerCase() != 'jpg') && (postfix.toLowerCase() != 'gif') && (postfix.toLowerCase() != 'png'))
		    {
		   	  alert("请上传jpeg,jpg,gif,png等格式的照片！");
			  return false;
			}
					
			$("form[name='form1']").submit();
			
			//parent.$.XYTipsWindow.removeBox();
		    return false;
		});  
	});
	
</script>
  </head>
  
  <body>
  <form name="form1" enctype="multipart/form-data" method="post" action="uppicture">
  <table width="350" height="150"  border="0" cellpadding="0" cellspacing="0" background="images/upFile_bg.gif">
    <tr>
      <td valign="top"><table width="100%" height="145"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="49" colspan="2">&nbsp; <br></td>
        </tr>
        <tr>
          <td width="9%" height="53">&nbsp;</td>
          <td width="88%" class="word">请选择上传的图片：<br>
            <input id="picturefile" name="picturefile" type="file" size="35" style="font-size: 12px;cursor: pointer;">
            <input type="hidden" id="imgname" name="imgname" value="">
            <br>
  			         <span style="font-size: 12px;"> 注：文件大小请控制在5M以内，格式为格式为gif,jpg,jpeg或png。</span></td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input name="Submit2" type="button" class="btn_close" onClick="parent.$.XYTipsWindow.removeBox(); " value="关闭" style="cursor: pointer;float: right;margin-right: 10px">
            &nbsp;&nbsp;
          <input name="Submit" type="submit" class="btn_grey" value="提交" style="cursor: pointer;float: right;margin-right: 12px">
            </td>
        </tr>
      </table></td>
    </tr>
  </table>
</form>
  </body>
</html>
