package org.hnust.cn.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hnust.cn.pojo.HotNews;
import org.hnust.cn.pojo.LabNews;
import org.hnust.cn.pojo.Links;
import org.hnust.cn.pojo.SlidePicture;
import org.hnust.cn.tran.MainTran;
import org.hnust.cn.util.LangUtil;

import com.opensymphony.xwork2.ActionSupport;


public class BasicAction extends ActionSupport implements SessionAware
{
	protected Map<String, Object> session;
	
	protected MainTran maintran;
	protected List<LabNews> newslist;
	protected List<Links> links;
	protected List<HotNews> hotnews;
	protected String lang;
	
	private String version;
	private String changeversionresult;
	
	public String changeversion()
	{
		changeversionresult = LangUtil.changeversion(session,version);
		return SUCCESS;
	}
	public void basicMethod()
	{
		lang = LangUtil.getLang(session);
		newslist = maintran.getTopNews(0,30, lang, "");
		links = maintran.getLinks();
		hotnews = maintran.getHotNews();
		System.out.println("ssstsrtsrtsrs"+hotnews.size());
	}
	
	
	
	public void setMaintran(MainTran maintran)
	{
		this.maintran = maintran;
	}

	public List<LabNews> getNewslist()
	{
		return newslist;
	}

	public List<Links> getLinks()
	{
		return links;
	}

	public void setSession(Map<String, Object> session)
	{
		this.session = session;
		
	}

	public List<HotNews> getHotnews()
	{
		return hotnews;
	}
	public String getChangeversionresult()
	{
		return changeversionresult;
	}
	public void setVersion(String version)
	{
		this.version = version;
	}
	
}
