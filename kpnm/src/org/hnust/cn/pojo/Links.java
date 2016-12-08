package org.hnust.cn.pojo;

/**
 * Links entity. @author MyEclipse Persistence Tools
 */

public class Links implements java.io.Serializable
{

	// Fields

	private Integer id;
	private Integer rank;
	private String linknamech;
	private String linknameen;
	private String url;

	// Constructors

	/** default constructor */
	public Links()
	{
	}

	/** full constructor */
	public Links(Integer rank, String linknamech, String linknameen, String url)
	{
		this.rank = rank;
		this.linknamech = linknamech;
		this.linknameen = linknameen;
		this.url = url;
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

	public Integer getRank()
	{
		return this.rank;
	}

	public void setRank(Integer rank)
	{
		this.rank = rank;
	}

	public String getLinknamech()
	{
		return this.linknamech;
	}

	public void setLinknamech(String linknamech)
	{
		this.linknamech = linknamech;
	}

	public String getLinknameen()
	{
		return this.linknameen;
	}

	public void setLinknameen(String linknameen)
	{
		this.linknameen = linknameen;
	}

	public String getUrl()
	{
		return this.url;
	}

	public void setUrl(String url)
	{
		this.url = url;
	}

}