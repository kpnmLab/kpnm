package org.hnust.cn.action;

import java.util.List;

import org.hnust.cn.entity.LabSituationEntity;
import org.hnust.cn.entity.ProjectEntity;
import org.hnust.cn.tran.ScienceResearchTran;

public class ScienceResearchAction extends BasicAction
{
	private ScienceResearchTran srtran;
	private LabSituationEntity lse;
	private String here;
	
	private String condition="all";
	private List<ProjectEntity> projectlist;
	
	private String leadernamech;
	private String leadernameen;
	private String namech;
	private String nameen;
	private String fromch;
	private String fromen;
	private String date;
	private String createkyxmresult;
	
	
	private String deletekyxmresult;
	private int deletekyxmrid;
	
	//创建科研项目
	public String creatkyxm()
	{
		
		createkyxmresult = srtran.creatkyxm(leadernamech, leadernameen, leadernamech, leadernameen, fromch, fromen, date);
		
		return SUCCESS;
	}
	//删除科研项目
	public String deletekyxm()
	{
		deletekyxmresult = srtran.deletekyxm(deletekyxmrid);
		
		return SUCCESS;
	}
	//研究方向
	public String direction()
	{
		basicMethod();
		lse = srtran.getresearchdirection(130, lang);
		here = "科学研究 >> 研究方向";
		return lang;
	}
	//学术交流
	public String conmunication()
	{
		basicMethod();
		lse = srtran.getresearchdirection(999, lang);
		here = "科学研究 >> 学术交流";
		return lang;
	}
	//科研项目
	public String kyxm()
	{
		projectlist = srtran.getprojects(condition, "ch");
		return "kyxm";
	}
	
	//科研项目
	public String project()
	{
		basicMethod();
		projectlist = srtran.getprojects(condition, lang);
		here = "科学研究 >> 科研项目";
		return "project"+lang;
	}
	
	public void setSrtran(ScienceResearchTran srtran)
	{
		this.srtran = srtran;
	}

	public LabSituationEntity getLse()
	{
		return lse;
	}

	public String getHere()
	{
		return here;
	}
	
	public void setCondition(String condition)
	{
		this.condition = condition;
	}
	public List<ProjectEntity> getProjectlist()
	{
		return projectlist;
	}
	public String getCreatekyxmresult()
	{
		return createkyxmresult;
	}
	public void setLeadernamech(String leadernamech)
	{
		this.leadernamech = leadernamech;
	}
	public void setLeadernameen(String leadernameen)
	{
		this.leadernameen = leadernameen;
	}
	public void setNamech(String namech)
	{
		this.namech = namech;
	}
	public void setNameen(String nameen)
	{
		this.nameen = nameen;
	}
	public void setFromch(String fromch)
	{
		this.fromch = fromch;
	}
	public void setFromen(String fromen)
	{
		this.fromen = fromen;
	}
	public void setDate(String date)
	{
		this.date = date;
	}
	public String getDeletekyxmresult()
	{
		return deletekyxmresult;
	}
	public void setDeletekyxmrid(int deletekyxmrid)
	{
		this.deletekyxmrid = deletekyxmrid;
	}
	
}
