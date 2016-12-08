package org.hnust.cn.tran;

import java.util.List;

import org.hnust.cn.dao.MainDao;
import org.hnust.cn.pojo.HotNews;
import org.hnust.cn.pojo.LabNews;
import org.hnust.cn.pojo.Links;
import org.hnust.cn.pojo.SlidePicture;

public class MainTran
{
	private MainDao maindao;

	
	public List<LabNews> getTopNews(int findex, int maxnum, String lang, String keywords)
	{
		return maindao.getTopNews(findex, maxnum, lang, keywords);
	}
	public int totalnewsnum()
	{
		return maindao.totalnewsnum();
	}
	
	public List<Links> getLinks()
	{
		return maindao.getLinks();
	}
	public List<SlidePicture> getSlidePictures()
	{
		return maindao.getSlidePictures();
	}
	public String getLabDesc(String lang)
	{
		return maindao.getLabDesc(lang);
	}
	public List<HotNews> getHotNews()
	{
		return maindao.getHotNews();
	}
	
	public void setMaindao(MainDao maindao)
	{
		this.maindao = maindao;
	}
	
	
}
