package org.hnust.cn.entity;

public class LabTeacher
{
	private int id;
	private String name;
	private String title;
	private String photo;
	private String introduce;
	
	private String project;
	private String overproject;
	private String paper;
	private String other;
	private String phone;
	private String email;
	
	
	public LabTeacher()
	{
		// TODO Auto-generated constructor stub
	}
	public LabTeacher(int id, String name)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.name = name;
	}
	public LabTeacher(int id, String name, String title, String photo, String introduce)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.name = name;
		this.title = title;
		this.photo = photo;
		this.introduce = introduce;
	}
	public LabTeacher(int id, String name, String title, String photo, String introduce, String project, String overproject, String paper, 
			String other, String phone, String email)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.name = name;
		this.title = title;
		this.photo = photo;
		this.introduce = introduce;
		this.paper=paper;
		this.phone=phone;
		this.project=project;
		this.overproject = overproject;
		this.other = other;
		this.email = email;
	}
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getPhoto()
	{
		return photo;
	}
	public void setPhoto(String photo)
	{
		this.photo = photo;
	}
	public String getIntroduce()
	{
		return introduce;
	}
	public void setIntroduce(String introduce)
	{
		this.introduce = introduce;
	}
	public String getProject()
	{
		return project;
	}
	public void setProject(String project)
	{
		this.project = project;
	}
	public String getOverproject()
	{
		return overproject;
	}
	public void setOverproject(String overproject)
	{
		this.overproject = overproject;
	}
	public String getPaper()
	{
		return paper;
	}
	public void setPaper(String paper)
	{
		this.paper = paper;
	}
	public String getOther()
	{
		return other;
	}
	public void setOther(String other)
	{
		this.other = other;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	
}
