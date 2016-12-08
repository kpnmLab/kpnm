package org.hnust.cn.entity;

import java.sql.Timestamp;

public class LabSituationEntity
{
	private String title;
	private String content;
	private Timestamp updatedate;
	
	public LabSituationEntity(String title, String content, Timestamp updatedate)
	{
		// TODO Auto-generated constructor stub
		this.title = title;
		this.content = content;
		this.updatedate = updatedate;
	}
	
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	public Timestamp getUpdatedate()
	{
		return updatedate;
	}
	public void setUpdatedate(Timestamp updatedate)
	{
		this.updatedate = updatedate;
	}
	
	
}
