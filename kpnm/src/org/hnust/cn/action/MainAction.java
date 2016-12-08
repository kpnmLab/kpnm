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


public class MainAction extends BasicAction
{
	private Map<String, Object> session;
	
	private List<SlidePicture> slidepictures;
	private String labdesc;
	private List<LabNews> morenewslist;
	private String keywords ="";
	private int fnindex;
	private int totalnewsnum;
	private int totalpages;
	private String here;

	public String mainmethod()
	{
		basicMethod();
		slidepictures = maintran.getSlidePictures();
		labdesc = maintran.getLabDesc(lang);
		return lang;
	}
	public String morenews()
	{
		basicMethod();
		morenewslist = maintran.getTopNews(fnindex*20,20, lang, keywords);
		totalnewsnum = maintran.totalnewsnum();
		here = "实验室新闻";
		System.out.println(morenewslist.size());
		if(totalnewsnum%20 == 0)
		{
			totalpages = totalnewsnum / 20;
		}
		else
		{
			totalpages = totalnewsnum / 20 + 1;
		}
		return lang;
	}
	
	public List<SlidePicture> getSlidepictures()
	{
		return slidepictures;
	}

	public String getLabdesc()
	{
		return labdesc;
	}
	
	public void setKeywords(String keywords)
	{
		this.keywords = keywords;
	}
	public void setFnindex(int fnindex)
	{
		this.fnindex = fnindex;
	}
	public int getTotalnewsnum()
	{
		return totalnewsnum;
	}
	public int getFnindex()
	{
		return fnindex;
	}
	public String getHere()
	{
		return here;
	}
	public List<LabNews> getMorenewslist()
	{
		return morenewslist;
	}
	public String getKeywords()
	{
		return keywords;
	}
	public int getTotalpages()
	{
		return totalpages;
	}
	
	
}
