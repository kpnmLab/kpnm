package org.hnust.cn.action;

import java.util.List;

import org.hnust.cn.pojo.LabNews;
import org.hnust.cn.tran.NewsTran;

public class NewsAction extends BasicAction
{
	private NewsTran newstran;
	
	private long newsid;
	private LabNews detailnews;
	private List<LabNews> backnewslist;
	
	private int fnindex;
	private int totalnewsnum;
	private int totalpages;
	private String keywords ="";
	
	private String language;
	private String content;
	private String publisher;
	private String title;
	private int updatenewsid;

	private String updateresult;
	
	
	
	private String titlech;
	private String titleen;
	private String publisherch;
	private String publisheren;
	private String contentch;
	private String contenten;
	private String ischn;
	private String hnimglink;
	private String ispublish;
	
	private int publishnewsid;
	
	private int deletenewsid;
	private String deleteresult;
	
	
	public String cnews()
	{
		System.out.println("hnimglink:"+hnimglink);
		newstran.createnews(titlech, titleen, publisherch, publisheren, contentch, contenten, ischn, hnimglink, ispublish);
		
		return "cnews";
	}
	
	public String precreatenews()
	{
		return "precreatenews";
	}
	
	public String edit()
	{
		detailnews = newstran.getDetailNews(newsid);
		System.out.println(detailnews.getContentch());
		return "edit";
	}
	
	public String updatenews()
	{
		System.out.println(language);
		updateresult = newstran.updatelabnews(updatenewsid, title, publisher, content, language);
		return SUCCESS;
	}
	
	public String publish()
	{
		newstran.publishnews(publishnewsid);
		return "publish";
	}
	public String deletenews()
	{
		deleteresult = newstran.deletenews(deletenewsid);
		return SUCCESS;
	}
	
	public String detailnews()
	{
		basicMethod();
		detailnews = newstran.getDetailNews(newsid);
		System.out.println(newslist.size());
		return lang;
	}
	
	public String backnm()
	{
		int num = 10;
		totalnewsnum = newstran.totalnewsnum();
		backnewslist = newstran.getTopNews(fnindex*num, num, "ch", keywords);
		if(totalnewsnum%num == 0)
		{
			totalpages = totalnewsnum / num;
		}
		else
		{
			totalpages = totalnewsnum / num + 1;
		}
		return "backnm";
	}
	
	public void setNewstran(NewsTran newstran)
	{
		this.newstran = newstran;
	}
	public void setNewsid(int newsid)
	{
		this.newsid = newsid;
	}

	public LabNews getDetailnews()
	{
		return detailnews;
	}
	public String getKeywords()
	{
		return keywords;
	}
	public void setKeywords(String keywords)
	{
		this.keywords = keywords;
	}
	
	public int getFnindex()
	{
		return fnindex;
	}
	public int getTotalnewsnum()
	{
		return totalnewsnum;
	}
	public int getTotalpages()
	{
		return totalpages;
	}

	public void setFnindex(int fnindex)
	{
		this.fnindex = fnindex;
	}

	public String getUpdateresult()
	{
		return updateresult;
	}

	public void setNewsid(long newsid)
	{
		this.newsid = newsid;
	}

	public void setLanguage(String language)
	{
		this.language = language;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public void setPublisher(String publisher)
	{
		this.publisher = publisher;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public void setUpdatenewsid(int updatenewsid)
	{
		this.updatenewsid = updatenewsid;
	}

	public void setTitlech(String titlech)
	{
		this.titlech = titlech;
	}

	public void setTitleen(String titleen)
	{
		this.titleen = titleen;
	}

	public void setPublisherch(String publisherch)
	{
		this.publisherch = publisherch;
	}

	public void setPublisheren(String publisheren)
	{
		this.publisheren = publisheren;
	}

	public void setContentch(String contentch)
	{
		this.contentch = contentch;
	}

	public void setContenten(String contenten)
	{
		this.contenten = contenten;
	}

	public void setIschn(String ischn)
	{
		this.ischn = ischn;
	}

	public void setHnimglink(String hnimglink)
	{
		this.hnimglink = hnimglink;
	}

	public void setIspublish(String ispublish)
	{
		this.ispublish = ispublish;
	}

	public void setPublishnewsid(int publishnewsid)
	{
		this.publishnewsid = publishnewsid;
	}

	public String getDeleteresult()
	{
		return deleteresult;
	}

	public void setDeletenewsid(int deletenewsid)
	{
		this.deletenewsid = deletenewsid;
	}

	public List<LabNews> getBacknewslist()
	{
		return backnewslist;
	}
	
	
}
