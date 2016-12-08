package org.hnust.cn.action;

import java.util.List;

import org.hnust.cn.entity.LabPostGraduate;
import org.hnust.cn.entity.LabTeacher;
import org.hnust.cn.pojo.Teacher;
import org.hnust.cn.tran.ResearchTeamTran;

public class ResearchTeamAction extends BasicAction
{
	private ResearchTeamTran rttran;
	private List<LabTeacher> ltlist;
	private List<LabTeacher> teachers;
	private String here;
	
	private String condition;
	private String selection;
	private List<LabPostGraduate> lpglist;
	
	private int teacherid;
	private LabTeacher labteacher;
	
	private String rthere;
	private String rttt;
	
	private int thisid;
	private int previd;
	
	private String rttype;
	
	private String namech;
	private String nameen;
	private String titlech;
	private String titleen;
	private String phone;
	private String email;
	private String introducech;
	private String introduceen;
	private String projectch;
	private String projecten;
	private String overProjectch;
	private String overProjecten;
	private String paperch;
	private String paperen;
	private String otherch;
	private String otheren;
	private String photo;
	private String cttype;
	
	
	private int deletertid =-1;
	private String deleteresult;
	
	private long editrtid;
	private Teacher teacher;
	
	private long savebasicinfoid;
	private String saveresult;
	
	
	private long editrtinfoid;
	private String content;
	private String language;
	private String ziduan;
	private String editresult;
	
	

	public String editrtinfo()
	{
		editresult=rttran.editrtinfo(editrtinfoid, ziduan, content);
		return SUCCESS;
	}
	
	public String savebasicinfo()
	{
		saveresult=rttran.savebasicinfo(savebasicinfoid, email, phone, namech, nameen, titlech, titleen);
		return SUCCESS;
	}
	
	public String editrt()
	{
		teacher = rttran.getteacherinfo(editrtid);
		System.out.println("fdf:"+rttype);
		return "editrt";
	}
	
	public String deletert()
	{
		deleteresult = rttran.deletert(deletertid);
		deletertid = -1;
		return SUCCESS;
	}
	public String creatert()
	{
		
		rttran.creatert(namech, nameen, titlech, titleen, phone, email, introducech, introduceen, projectch, projecten, overProjectch, overProjecten, paperch, paperen, otherch, otheren, photo, cttype);
		return "create" + cttype;
	}
	
	public String precreatrt()
	{
		System.out.println(rttype);
		return "precreatrt";
	}
	
	public String changertsort()
	{
		rttran.changertsort(thisid, previd);
		return SUCCESS;
	}
	
	public String teacherhome()
	{
		basicMethod();
		here = "研究队伍 >> 教师主页";
		labteacher = rttran.getltinfo(teacherid, lang);
		System.out.println(labteacher.getEmail());
		return "teacherhome" + lang;
	}
	
	public String backleader()
	{
		basicMethod();
		ltlist = rttran.getlableaders(lang, 1);
		rthere = "实验室领导";
		rttt="leader";
		return "backrteam";
	}
	public String backfulltime()
	{
		basicMethod();
		ltlist = rttran.getlableaders(lang, 2);
		rttt="fulltime";
		rthere = "专职研究员";
		
		return "backrteam";
	}
	public String backparttime()
	{
		basicMethod();
		ltlist = rttran.getlableaders(lang, 3);
		rttt="parttime";
		rthere = "兼职研究员";
		return "backrteam";
	}
	public String backvisiting()
	{
		basicMethod();
		ltlist = rttran.getlableaders(lang, 4);
		rttt="visiting";
		rthere = "客座研究员";
		return "backrteam";
	}
	public String leader()
	{
		basicMethod();
		ltlist = rttran.getlableaders(lang, 1);
		here = "研究队伍 >> 实验室领导";
		return lang;
	}
	public String fulltime()
	{
		basicMethod();
		ltlist = rttran.getlableaders(lang, 2);
		here = "研究队伍 >> 专职研究员";
		
		return lang;
	}
	public String parttime()
	{
		ltlist = rttran.getlableaders(lang, 3);
		here = "研究队伍 >> 兼职研究员";
		return lang;
	}
	public String visiting()
	{
		basicMethod();
		ltlist = rttran.getlableaders(lang, 4);
		here = "研究队伍 >> 客座研究员";
		return lang;
	}
	public String postgraduate()
	{
		basicMethod();
		System.out.println(lang);
		lpglist = rttran.getlabpostgraduate(condition, selection, lang);
		teachers = rttran.getlableaders(lang);
		here = "研究队伍 >> 研究生";
		condition = null;
		selection = null;
		return "postgraduate"+lang;
	}
	public String undergraduate()
	{
		basicMethod();
		
		return lang;
	}
	
	public void setRttran(ResearchTeamTran rttran)
	{
		this.rttran = rttran;
	}
	public List<LabTeacher> getLtlist()
	{
		return ltlist;
	}
	public String getHere()
	{
		return here;
	}
	public void setCondition(String condition)
	{
		this.condition = condition;
	}
	public void setSelection(String selection)
	{
		this.selection = selection;
	}
	public List<LabPostGraduate> getLpglist()
	{
		return lpglist;
	}
	public void setZiduan(String ziduan)
	{
		this.ziduan = ziduan;
	}
	public String getSaveresult()
	{
		return saveresult;
	}

	public void setTeacherid(int teacherid)
	{
		this.teacherid = teacherid;
	}

	public String getEditresult()
	{
		return editresult;
	}

	public void setEditrtinfoid(long editrtinfoid)
	{
		this.editrtinfoid = editrtinfoid;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public void setLanguage(String language)
	{
		this.language = language;
	}

	public LabTeacher getLabteacher()
	{
		return labteacher;
	}

	public void setSavebasicinfoid(long savebasicinfoid)
	{
		this.savebasicinfoid = savebasicinfoid;
	}

	public void setEditrtid(long editrtid)
	{
		this.editrtid = editrtid;
	}

	public String getRthere()
	{
		return rthere;
	}

	public void setThisid(int thisid)
	{
		this.thisid = thisid;
	}

	public Teacher getTeacher()
	{
		return teacher;
	}

	public void setPrevid(int previd)
	{
		this.previd = previd;
	}

	public void setRttype(String rttype)
	{
		this.rttype = rttype;
	}


	public String getRttt()
	{
		return rttt;
	}

	public String getRttype()
	{
		return rttype;
	}

	public void setNamech(String namech)
	{
		this.namech = namech;
	}

	public void setNameen(String nameen)
	{
		this.nameen = nameen;
	}

	public void setTitlech(String titlech)
	{
		this.titlech = titlech;
	}

	public void setTitleen(String titleen)
	{
		this.titleen = titleen;
	}

	public void setPhone(String phone)
	{
		this.phone = phone;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public void setIntroducech(String introducech)
	{
		this.introducech = introducech;
	}

	public void setIntroduceen(String introduceen)
	{
		this.introduceen = introduceen;
	}

	public void setProjectch(String projectch)
	{
		this.projectch = projectch;
	}

	public void setProjecten(String projecten)
	{
		this.projecten = projecten;
	}

	public void setOverProjectch(String overProjectch)
	{
		this.overProjectch = overProjectch;
	}

	public void setOverProjecten(String overProjecten)
	{
		this.overProjecten = overProjecten;
	}

	public void setPaperch(String paperch)
	{
		this.paperch = paperch;
	}

	public void setPaperen(String paperen)
	{
		this.paperen = paperen;
	}

	public void setOtherch(String otherch)
	{
		this.otherch = otherch;
	}

	public void setOtheren(String otheren)
	{
		this.otheren = otheren;
	}

	public void setPhoto(String photo)
	{
		this.photo = photo;
	}

	public void setCttype(String cttype)
	{
		this.cttype = cttype;
	}
	public void setDeletertid(int deletertid)
	{
		this.deletertid = deletertid;
	}
	public String getDeleteresult()
	{
		return deleteresult;
	}

	public List<LabTeacher> getTeachers()
	{
		return teachers;
	}
	
}
