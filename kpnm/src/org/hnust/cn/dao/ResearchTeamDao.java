package org.hnust.cn.dao;

import java.util.List;

import org.hnust.cn.entity.LabPostGraduate;
import org.hnust.cn.entity.LabTeacher;
import org.hnust.cn.pojo.Teacher;

public interface ResearchTeamDao
{
	public List<LabTeacher> getlableaders(String lang, int typeid);
	public List<LabPostGraduate> getlabpostgraduate(String sql, String lang);
	public LabTeacher getltinfo(int teacherid, String lang);
	public String changertsort(int thisid, int previd);
	public String creatert(String namech, String nameen, String titlech, String titleen, String phone, String email, 
			String introducech, String introduceen, String projectch, String projecten, String overProjectch, String overProjecten,
			String paperch, String paperen, String otherch, String otheren, String photo, String cttype);
	public String deletert(int deletertid);
	public Teacher getteacherinfo(long tid);
	public String savebasicinfo(long savebasicinfoid, String email, String phone, String namech,String nameen,String titlech,String titleen);
	public String editrtinfo(long editrtid, String ziduan, String content);
	public List<LabTeacher> getlableaders(String lang);
}
