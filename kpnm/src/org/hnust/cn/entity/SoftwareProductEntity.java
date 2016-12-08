package org.hnust.cn.entity;

public class SoftwareProductEntity
{
	private int id;
	private String name;
	private String nameen;
	private String photo;
	public SoftwareProductEntity(int id, String name, String photo)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.name = name;
		this.photo = photo;
	}
	public SoftwareProductEntity(int id, String name,String nameen, String photo)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.name = name;
		this.nameen = nameen;
		this.photo = photo;
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
	public String getPhoto()
	{
		return photo;
	}
	public void setPhoto(String photo)
	{
		this.photo = photo;
	}
	public String getNameen()
	{
		return nameen;
	}
	public void setNameen(String nameen)
	{
		this.nameen = nameen;
	}
	
	
}
