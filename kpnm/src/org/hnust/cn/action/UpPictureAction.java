package org.hnust.cn.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class UpPictureAction extends ActionSupport implements ServletRequestAware,SessionAware
{

	private static final long serialVersionUID = 1L;
	
	private String imgname;
	private String sign;
	private Map<String, Object> session;
	private HttpServletRequest request;
	private File picturefile;
	
	
	public void upLoadPicture()
	{
		String username = (String)session.get("username");
		String directory = "../webapps/17translate/imgrepository/" + username;
		File file = new File(directory);
		imgname = username + imgname.substring(imgname.lastIndexOf("."));
		if(!file.exists())
			file.mkdir();
		
		HttpServletResponse response = ServletActionContext.getResponse();
		try
		{   
		
			response.setContentType("text/html;charset=utf-8");
			Writer out = response.getWriter();
			if(null == picturefile)
			{
				   out.write("<script>alert('��ѡ��һ����Ƭ!');history.back(-1);</script>");
			}			
			else
			{
				InputStream in = new FileInputStream(picturefile);
				long imgsize = in.available();//�ļ���С
				if(((imgsize / 1024)/ 1024) > 2)//������2��
				{
					out.write("<script>alert('ͼƬ̫��������ѡ��');history.back(-1);</script>");
				}
			//	boolean isUpdateOk = myinfobiz.updatePicture(username, in);
				if(true)
				{
					String fullpath = directory + "/" + imgname;
					File imgfile = new File(fullpath);
					if(imgfile.exists())
					{
						imgfile.delete();
						imgfile.createNewFile();
					}
					OutputStream os = new FileOutputStream(imgfile);
					int len = 0;
					byte[] b = new byte[1024];
					
					while((len = in.read(b)) != -1)
					{
						os.write(b);
					}
					in.close();
					os.flush();
					os.close();
					
					{System.out.println("sign:" + sign);
						if("register".equals(sign))
						{
							sign = null;
							out.write("<script>history.back(-1);" +"window.parent.window.document.getElementById('myimg').style.display='block';"+
									"window.parent.window.document.getElementById('myimg').src='myphoto?"+Math.random()+"'</script>");
						}
						else
							out.write("<script>history.back(-1);" +
									"window.parent.window.document.getElementById('myimg').src='myphoto?"+Math.random()+"';parent.$.XYTipsWindow.removeBox();</script>");
					}
						 out.write("<script>alert('ͼƬ�ϴ��������');history.back(-1);</script>");
				} 
			}
			out.flush();
			out.close();
			picturefile = null;
			
			
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	public void setSession(Map<String, Object> session)
	{
		this.session = session;
	}

	public void setServletRequest(HttpServletRequest request)
	{
		this.request = request;
	}

	public File getPicturefile()
	{
		return picturefile;
	}

	public void setPicturefile(File picturefile)
	{
		this.picturefile = picturefile;
	}

	public String getImgname()
	{
		return imgname;
	}

	public void setImgname(String imgname)
	{
		this.imgname = imgname;
	}

	public String getSign()
	{
		return sign;
	}

	public void setSign(String sign)
	{
		this.sign = sign;
	}
}
