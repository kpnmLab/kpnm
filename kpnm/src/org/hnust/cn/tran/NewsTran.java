package org.hnust.cn.tran;

import java.util.List;

import org.hnust.cn.dao.NewsDao;
import org.hnust.cn.pojo.LabNews;

public class NewsTran
{
	private NewsDao newsdao;

	public LabNews getDetailNews(long newsid)
	{
		return newsdao.getDetailNews(newsid);
	}
	public List<LabNews> getTopNews(int findex, int maxnum, String lang, String keywords)
	{
		return newsdao.getTopNews(findex, maxnum, lang, keywords);
	}
	public String updatelabnews(int updatenewsid, String title, String publisher, String content, String language)
	{
		return newsdao.updatelabnews(updatenewsid, title, publisher, content, language);
	}
	public String deletenews(int deletenewsid)
	{
		return newsdao.deletenews(deletenewsid);
	}
	public void publishnews(int publishnewsid)
	{
		newsdao.publishnews(publishnewsid);
	}
	public void createnews(String titlech,String titleen,String publisherch,
			String publisheren, String contentch, String contenten, String ischn, String hnimglink,String ispublish)
	{
		newsdao.createnews(titlech, titleen, publisherch, publisheren, contentch, contenten, ischn, hnimglink, ispublish);
	}
	public int totalnewsnum()
	{
		return newsdao.totalnewsnum();
	}
	public void setNewsdao(NewsDao newsdao)
	{
		this.newsdao = newsdao;
	}
	
	
}
