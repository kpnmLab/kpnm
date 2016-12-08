package org.hnust.cn.pojo;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable
{

	// Fields

	private Long id;
	private String namech;
	private String nameen;
	private String titlech;
	private String titleen;
	private String photo;
	private String introducech;
	private String introduceen;
	private String otherch;
	private String otheren;
	private Long typeId;
	private String projectch;
	private String projecten;
	private String overProjectch;
	private String overProjecten;
	private String paperch;
	private String paperen;
	private String phone;
	private String email;
	private Float sort;
	private Integer iid;

	// Constructors

	/** default constructor */
	public Teacher()
	{
	}

	/** minimal constructor */
	public Teacher(Integer iid)
	{
		this.iid = iid;
	}

	/** full constructor */
	public Teacher(String namech, String nameen, String titlech,
			String titleen, String photo, String introducech,
			String introduceen, String otherch, String otheren, Long typeId,
			String projectch, String projecten, String overProjectch,
			String overProjecten, String paperch, String paperen, String phone,
			String email, Float sort, Integer iid)
	{
		this.namech = namech;
		this.nameen = nameen;
		this.titlech = titlech;
		this.titleen = titleen;
		this.photo = photo;
		this.introducech = introducech;
		this.introduceen = introduceen;
		this.otherch = otherch;
		this.otheren = otheren;
		this.typeId = typeId;
		this.projectch = projectch;
		this.projecten = projecten;
		this.overProjectch = overProjectch;
		this.overProjecten = overProjecten;
		this.paperch = paperch;
		this.paperen = paperen;
		this.phone = phone;
		this.email = email;
		this.sort = sort;
		this.iid = iid;
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

	public String getNamech()
	{
		return this.namech;
	}

	public void setNamech(String namech)
	{
		this.namech = namech;
	}

	public String getNameen()
	{
		return this.nameen;
	}

	public void setNameen(String nameen)
	{
		this.nameen = nameen;
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

	public String getPhoto()
	{
		return this.photo;
	}

	public void setPhoto(String photo)
	{
		this.photo = photo;
	}

	public String getIntroducech()
	{
		return this.introducech;
	}

	public void setIntroducech(String introducech)
	{
		this.introducech = introducech;
	}

	public String getIntroduceen()
	{
		return this.introduceen;
	}

	public void setIntroduceen(String introduceen)
	{
		this.introduceen = introduceen;
	}

	public String getOtherch()
	{
		return this.otherch;
	}

	public void setOtherch(String otherch)
	{
		this.otherch = otherch;
	}

	public String getOtheren()
	{
		return this.otheren;
	}

	public void setOtheren(String otheren)
	{
		this.otheren = otheren;
	}

	public Long getTypeId()
	{
		return this.typeId;
	}

	public void setTypeId(Long typeId)
	{
		this.typeId = typeId;
	}

	public String getProjectch()
	{
		return this.projectch;
	}

	public void setProjectch(String projectch)
	{
		this.projectch = projectch;
	}

	public String getProjecten()
	{
		return this.projecten;
	}

	public void setProjecten(String projecten)
	{
		this.projecten = projecten;
	}

	public String getOverProjectch()
	{
		return this.overProjectch;
	}

	public void setOverProjectch(String overProjectch)
	{
		this.overProjectch = overProjectch;
	}

	public String getOverProjecten()
	{
		return this.overProjecten;
	}

	public void setOverProjecten(String overProjecten)
	{
		this.overProjecten = overProjecten;
	}

	public String getPaperch()
	{
		return this.paperch;
	}

	public void setPaperch(String paperch)
	{
		this.paperch = paperch;
	}

	public String getPaperen()
	{
		return this.paperen;
	}

	public void setPaperen(String paperen)
	{
		this.paperen = paperen;
	}

	public String getPhone()
	{
		return this.phone;
	}

	public void setPhone(String phone)
	{
		this.phone = phone;
	}

	public String getEmail()
	{
		return this.email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public Float getSort()
	{
		return this.sort;
	}

	public void setSort(Float sort)
	{
		this.sort = sort;
	}

	public Integer getIid()
	{
		return this.iid;
	}

	public void setIid(Integer iid)
	{
		this.iid = iid;
	}

}