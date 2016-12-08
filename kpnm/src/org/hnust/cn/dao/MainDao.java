package org.hnust.cn.dao;

import java.util.List;

import org.hnust.cn.pojo.HotNews;
import org.hnust.cn.pojo.LabNews;
import org.hnust.cn.pojo.Links;
import org.hnust.cn.pojo.SlidePicture;

public interface MainDao
{
	public List<LabNews> getTopNews(int findex, int maxnum, String lang, String keywords);
	public List<Links> getLinks();
	public List<HotNews> getHotNews();
	public List<SlidePicture> getSlidePictures();
	public String getLabDesc(String lang);
	public int totalnewsnum();
}
