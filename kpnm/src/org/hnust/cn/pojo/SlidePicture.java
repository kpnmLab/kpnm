package org.hnust.cn.pojo;

/**
 * SlidePicture entity. @author MyEclipse Persistence Tools
 */

public class SlidePicture implements java.io.Serializable
{

	// Fields

	private Integer id;
	private Integer rank;
	private String name;
	private String url;

	// Constructors

	/** default constructor */
	public SlidePicture()
	{
	}

	/** full constructor */
	public SlidePicture(Integer rank, String name, String url)
	{
		this.rank = rank;
		this.name = name;
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

	public String getName()
	{
		return this.name;
	}

	public void setName(String name)
	{
		this.name = name;
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