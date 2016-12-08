package org.hnust.cn.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;


import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;


public class PictureAction extends ActionSupport
{
	private File imgfile;
	private String imgfileFileName;
	private String imgfileContentType;
	private String link;
	
	public String upload()
	{
		String path = ServletActionContext.getServletContext().getRealPath("/") + "uploadfile\\image\\";
		try
		{
			
//			HttpServletResponse response = ServletActionContext.getResponse();
//			response.setContentType("application/json;charset=utf-8");
//			Writer out = response.getWriter();
			
			
			InputStream in = new FileInputStream(imgfile);
			long imgsize = in.available();//文件大小
			
			String fullpath = path + imgfileFileName;
			File imgfile = new File(fullpath);
			
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
			
			String imgpath = "uploadfile/image/"+ imgfileFileName;
			
			link =imgpath; 
//			Map<String,String> linkmap = new HashMap<String,String>();
//			linkmap.put("link", imgpath);
			
//			String responsestr = JSONArray.fromObject(linkmap).toString();
//			System.out.println(responsestr);
//			out.write(responsestr);
//			out.flush();
//			out.close();
			
		} catch (Exception ea)
		{
			// TODO Auto-generated catch block
			ea.printStackTrace();
		}
		return SUCCESS;
	}

	public void setImgfile(File imgfile)
	{
		this.imgfile = imgfile;
	}

	public void setImgfileFileName(String imgfileFileName)
	{
		this.imgfileFileName = imgfileFileName;
	}

	public void setImgfileContentType(String imgfileContentType)
	{
		this.imgfileContentType = imgfileContentType;
	}

	public String getLink()
	{
		return link;
	}
	
	
}
