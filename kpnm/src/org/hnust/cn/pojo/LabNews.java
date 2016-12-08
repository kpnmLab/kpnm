package org.hnust.cn.pojo;

import java.sql.Timestamp;

/**
 * LabNews entity. @author MyEclipse Persistence Tools
 */

public class LabNews implements java.io.Serializable
{

	// Fields

	private Long id;
	private String publishuserch;
	private String publishuseren;
	private Timestamp publishdate;
	private Long rank;
	private Long scancountch;
	private Long scancounten;
	private String titlech;
	private String titleen;
	private String contentch;
	private String contenten;
	private String status;

	// Constructors

	/** default constructor */
	public LabNews()
	{
	}
	public LabNews(Long id, String titlech, String titleen, Object publishdate)
	{
		this.id = id;
		this.titlech = titlech;
		this.titleen = titleen;
		this.publishdate = (Timestamp) publishdate;
	}
	
	public LabNews(Long id, String titlech, Object publishdate, String status)
	{
		this.id = id;
		this.titlech = titlech;
		this.publishdate = (Timestamp) publishdate;
		this.status = status;
	}

	/** full constructor */
	public LabNews(String publishuserch, String publishuseren,
			Timestamp publishdate, Long rank, Long scancountch,
			Long scancounten, String titlech, String titleen, String contentch,
			String contenten, String status)
	{
		this.publishuserch = publishuserch;
		this.publishuseren = publishuseren;
		this.publishdate = publishdate;
		this.rank = rank;
		this.scancountch = scancountch;
		this.scancounten = scancounten;
		this.titlech = titlech;
		this.titleen = titleen;
		this.contentch = contentch;
		this.contenten = contenten;
		this.status = status;
	}

	// Property accessors

	public Long getId()
	{
		return this.id;
	}

	public void setId(Long id)
	{
		this.id = id;
	}

	public String getPublishuserch()
	{
		return this.publishuserch;
	}

	public void setPublishuserch(String publishuserch)
	{
		this.publishuserch = publishuserch;
	}

	public String getPublishuseren()
	{
		return this.publishuseren;
	}

	public void setPublishuseren(String publishuseren)
	{
		this.publishuseren = publishuseren;
	}

	public Timestamp getPublishdate()
	{
		return this.publishdate;
	}

	public void setPublishdate(Timestamp publishdate)
	{
		this.publishdate = publishdate;
	}

	public Long getRank()
	{
		return this.rank;
	}

	public void setRank(Long rank)
	{
		this.rank = rank;
	}

	public Long getScancountch()
	{
		return this.scancountch;
	}

	public void setScancountch(Long scancountch)
	{
		this.scancountch = scancountch;
	}

	public Long getScancounten()
	{
		return this.scancounten;
	}

	public void setScancounten(Long scancounten)
	{
		this.scancounten = scancounten;
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

	public String getContentch()
	{
		return this.contentch;
	}

	public void setContentch(String contentch)
	{
		this.contentch = contentch;
	}

	public String getContenten()
	{
		return this.contenten;
	}

	public void setContenten(String contenten)
	{
		this.contenten = contenten;
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