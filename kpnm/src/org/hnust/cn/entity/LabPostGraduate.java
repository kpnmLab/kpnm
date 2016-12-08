package org.hnust.cn.entity;

public class LabPostGraduate
{
	private int id;
	private String name;
	private String photo;
	private int tutorid;
	private String tutorname;
	private String introduce;
	private String grade;
	private String phone;
	private String email;
	private String isGraduate;
	public LabPostGraduate()
	{
		// TODO Auto-generated constructor stub
	}
	public LabPostGraduate(int id, String name, String photo, int tutorid, String tutorname,
			String introduce, String grade, String isGraduate)
	{
		this.id = id;
		this.name = name;
		this.photo =photo;
		this.tutorid = tutorid;
		this.tutorname = tutorname;
		this.introduce = introduce;
		this.grade = grade;
		this.isGraduate = isGraduate;
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
	
	public int getTutorid()
	{
		return tutorid;
	}
	public void setTutorid(int tutorid)
	{
		this.tutorid = tutorid;
	}
	public String getTutorname()
	{
		return tutorname;
	}
	public void setTutorname(String tutorname)
	{
		this.tutorname = tutorname;
	}
	public String getIntroduce()
	{
		return introduce;
	}
	public void setIntroduce(String introduce)
	{
		this.introduce = introduce;
	}
	public String getGrade()
	{
		return grade;
	}
	public void setGrade(String grade)
	{
		this.grade = grade;
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
	public String getIsGraduate()
	{
		return isGraduate;
	}
	public void setIsGraduate(String isGraduate)
	{
		this.isGraduate = isGraduate;
	}
	
	
}
