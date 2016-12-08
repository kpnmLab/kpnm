package org.hnust.cn.tran;

import java.util.List;

import org.hnust.cn.dao.ResearchTeamDao;
import org.hnust.cn.entity.LabPostGraduate;
import org.hnust.cn.entity.LabTeacher;
import org.hnust.cn.pojo.Teacher;

public class ResearchTeamTran
{
	private ResearchTeamDao rtd;

	public List<LabTeacher> getlableaders(String lang, int typeid)
	{
		return rtd.getlableaders(lang, typeid);
	}
	public LabTeacher getltinfo(int teacherid, String lang)
	{
		return rtd.getltinfo(teacherid, lang);
	}
	public String changertsort(int thisid, int previd)
	{
		return rtd.changertsort(thisid, previd);
	}
	public String deletert(int deletertid)
	{
		return rtd.deletert(deletertid);
	}
	public Teacher getteacherinfo(long tid)
	{
		return rtd.getteacherinfo(tid);
	}
	public List<LabTeacher> getlableaders(String lang)
	{
		return rtd.getlableaders(lang);
	}
	public String editrtinfo(long editrtid, String ziduan, String content)
	{
		return rtd.editrtinfo(editrtid, ziduan, content);
	}
	public String savebasicinfo(long savebasicinfoid, String email, String phone, String namech,String nameen,String titlech,String titleen)
	{
		return rtd.savebasicinfo(savebasicinfoid, email, phone, namech, nameen, titlech, titleen);
	}
	public String creatert(String namech, String nameen, String titlech, String titleen, String phone, String email, 
			String introducech, String introduceen, String projectch, String projecten, String overProjectch, String overProjecten,
			String paperch, String paperen, String otherch, String otheren, String photo, String cttype)
	{
		return rtd.creatert(namech, nameen, titlech, titleen, phone, email, introducech, introduceen, projectch, projecten, overProjectch, overProjecten, paperch, paperen, otherch, otheren, photo, cttype);
	}
	
	public List<LabPostGraduate> getlabpostgraduate(String condition, String selection, String lang)
	{
		String sql ="";
		String name = "name"+lang;
		String introduce = "introduce"+lang;
		String tutorname = "tutorname"+ lang;
		if("rxnf".equals(condition))
		{
			if("init".equals(selection))
			{
				sql = "select id,"+name+",photo,tutor,isGraduate,grade,"+tutorname+","+introduce + " from student order by grade desc";
			}
			else
			{
				sql = "select id,"+name+",photo,tutor,isGraduate,grade,"+tutorname+","+introduce + " from student where grade=" + selection;
			}
		}
		else if("daoshi".equals(condition))
		{
			sql = "select id,"+name+",photo,tutor,isGraduate,grade,"+tutorname+","+introduce + " from student where tutor="+selection+" order by grade desc";
		}
		else if("bystatus".equals(condition))
		{
			sql = "select id,"+name+",photo,tutor,isGraduate,grade,"+tutorname+","+introduce + " from student where isGraduate='"+selection+"' order by grade desc";
		}
		else
		{
			sql = "select id,"+name+",photo,tutor,isGraduate,grade,"+tutorname+","+introduce + " from student order by grade desc";
		}
		
		return rtd.getlabpostgraduate(sql, lang);
	}
	public void setRtd(ResearchTeamDao rtd)
	{
		this.rtd = rtd;
	}
	
	
	
}
