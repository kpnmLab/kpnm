package org.hnust.cn.entity;

public class ProjectEntity
{
	private int id;
	private int tId;
	private String leadername;
	private String name;
	private String date;
	private String from;
	public ProjectEntity(int id, int tId, String leadername, String name, String date, String from)
	{
		this.id = id;
		this.tId = tId;
		this.name = name;
		this.date = date;
		this.leadername = leadername;
		this.from = from;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public int gettId()
	{
		return tId;
	}
	public void settId(int tId)
	{
		this.tId = tId;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getDate()
	{
		return date;
	}
	public void setDate(String date)
	{
		this.date = date;
	}
	public String getFrom()
	{
		return from;
	}
	public void setFrom(String from)
	{
		this.from = from;
	}
	public String getLeadername()
	{
		return leadername;
	}
	public void setLeadername(String leadername)
	{
		this.leadername = leadername;
	}
	
	
}
