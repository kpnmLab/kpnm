package org.hnust.cn.pojo;

import java.sql.Timestamp;

/**
 * HotNews entity. @author MyEclipse Persistence Tools
 */

public class HotNews implements java.io.Serializable
{

	// Fields

	private Integer id;
	private LabNews labNews;
	private String titlech;
	private String titleen;
	private String url;
	private Timestamp publishdate;
	private String status;

	// Constructors

	/** default constructor */
	public HotNews()
	{
	}

	/** full constructor */
	public HotNews(LabNews labNews, String titlech, String titleen, String url,
			Timestamp publishdate, String status)
	{
		this.labNews = labNews;
		this.titlech = titlech;
		this.titleen = titleen;
		this.url = url;
		this.publishdate = publishdate;
		this.status = status;
	}

	// Property accessors

	public Integer getId()
	{
		return this.id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public LabNews getLabNews()
	{
		return this.labNews;
	}

	public void setLabNews(LabNews labNews)
	{
		this.labNews = labNews;
	}

	public String getTitlech()
	{
		return this.titlech;
	}

	public void setTitlech(String titlech)
	{
		this.titlech = titlech;
	}

	public String getTitleen()
	{
		return this.titleen;
	}

	public void setTitleen(String titleen)
	{
		this.titleen = titleen;
	}

	public String getUrl()
	{
		return this.url;
	}

	public void setUrl(String url)
	{
		this.url = url;
	}

	public Timestamp getPublishdate()
	{
		return this.publishdate;
	}

	public void setPublishdate(Timestamp publishdate)
	{
		this.publishdate = publishdate;
	}

	public String getStatus()
	{
		return this.status;
	}

	public void setStatus(String status)
	{
		this.status = status;
	}

}