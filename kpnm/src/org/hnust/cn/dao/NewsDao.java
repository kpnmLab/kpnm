package org.hnust.cn.dao;

import java.util.List;

import org.hnust.cn.pojo.LabNews;

public interface NewsDao
{
	public LabNews getDetailNews(long newsid);
	public List<LabNews> getTopNews(int findex, int maxnum, String lang, String keywords);
	public int totalnewsnum();
	public String updatelabnews(int updatenewsid, String title, String publisher, String content, String language);
	public void createnews(String titlech,String titleen,String publisherch,
			String publisheren, String contentch, String contenten, String ischn, String hnimglink,String ispublish);
	public void publishnews(int publishnewsid);
	public String deletenews(int deletenewsid);
}
