package org.hnust.cn.entity;

import java.sql.Timestamp;

public class LabInfo
{
	private int id;
	private String name;
	private int count;
	private String contentch;
	private String contenten;
	private Timestamp updatedate;
	private String namech;
	private String nameen;
	public LabInfo(int id, String name,int count,Timestamp updatedate)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.name = name;
		this.count = count;
		this.updatedate = updatedate;
	}
	public LabInfo(int id,String namech,String nameen, String contentch,String contenten)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.contentch = contentch;
		this.contenten = contenten;
		this.namech = namech;
		this.nameen = nameen;
	}
	public LabInfo(int id, String contentch,String contenten)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.contentch = contentch;
		this.contenten = contenten;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getContentch()
	{
		return contentch;
	}
	public void setContentch(String contentch)
	{
		this.contentch = contentch;
	}
	public String getContenten()
	{
		return contenten;
	}
	public void setContenten(String contenten)
	{
		this.contenten = contenten;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public int getCount()
	{
		return count;
	}
	public void setCount(int count)
	{
		this.count = count;
	}
	public Timestamp getUpdatedate()
	{
		return updatedate;
	}
	public void setUpdatedate(Timestamp updatedate)
	{
		this.updatedate = updatedate;
	}
	public String getNamech()
	{
		return namech;
	}
	public void setNamech(String namech)
	{
		this.namech = namech;
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
