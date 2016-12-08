package org.hnust.cn.entity;

public class SoftwarecrEntity
{
	private int id;
	private String author;
	private String title;
	private String registerno;
	private String certificateno;
	private String date;
	
	public SoftwarecrEntity(int id, String author, String title, String registerno, String certificateno,String date)
	{
		// TODO Auto-generated constructor stub
		this.id = id;
		this.author =author;
		this.title = title;
		this.registerno = registerno;
		this.certificateno = certificateno;
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
	public String getAuthor()
	{
		return author;
	}
	public void setAuthor(String author)
	{
		this.author = author;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getRegisterno()
	{
		return registerno;
	}
	public void setRegisterno(String registerno)
	{
		this.registerno = registerno;
	}
	public String getCertificateno()
	{
		return certificateno;
	}
	public void setCertificateno(String certificateno)
	{
		this.certificateno = certificateno;
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
