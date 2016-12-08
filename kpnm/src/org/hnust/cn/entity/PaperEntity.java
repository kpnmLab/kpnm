package org.hnust.cn.entity;

public class PaperEntity
{
	private int id;
	private String person;
	private String title;
	private String publication;
	private String date;
	
	public PaperEntity(int id, String person, String title, String publication, String date)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.person = person;
		this.title = title;
		this.publication = publication;
		this.date = date;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getPerson()
	{
		return person;
	}
	public void setPerson(String person)
	{
		this.person = person;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getPublication()
	{
		return publication;
	}
	public void setPublication(String publication)
	{
		this.publication = publication;
	}
	public String getDate()
	{
		return date;
	}
	public void setDate(String date)
	{
		this.date = date;
	}
}
