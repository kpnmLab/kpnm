package org.hnust.cn.action;

import java.util.List;

import org.hnust.cn.entity.LabSituationEntity;
import org.hnust.cn.entity.PaperEntity;
import org.hnust.cn.entity.ProjectEntity;
import org.hnust.cn.entity.SoftwareProductEntity;
import org.hnust.cn.entity.SoftwarecrEntity;
import org.hnust.cn.tran.AchievementTran;
import org.hnust.cn.tran.ScienceResearchTran;

public class AchievementAction extends BasicAction
{
	private AchievementTran atran;
	private String here;
	
	private String condition = "all";
	private String backcondition = "";
	private String authorname = "all";
	private List<PaperEntity> paperlist;
	private List<PaperEntity> kyzxlist;
	private List<PaperEntity> zlcglist;
	private List<SoftwarecrEntity> softcrlist;
	private List<SoftwareProductEntity> softplist;
	
	
	private String author;
	private String title;
	private String publish;
	private String time;
	private String createcpresult;
	
	private int cpid;
	private int kyzxid;
	private int zlcgid;
	private String deletecpresult;
	
	private String namech;
	private String nameen;
	private String photo;
	
	
	private int deleterjcpid;
	private String deleterjcpresult;
	
	private int editrjcpid;
	private SoftwareProductEntity spe;
	
	
	private int savecpid;
	private String savenamech;
	private String savenameen;
	private String savephoto;
	private String saverjcpresult;
	
	private String authorch;
	private String authoren;
	private String titlech;
	private String titleen;
	private String registerno;
	private String certificateno;
	private String createrjzzqresult;
	
	private int rjzzqid;
	private String deleterjzzqresult;
	
	public String deleterjzzq()
	{
		deleterjzzqresult = atran.deleterjzzq(rjzzqid);
		return SUCCESS;
	}
	
	public String creatrjzzq()
	{
		createrjzzqresult = atran.creatrjzzq(authorch, authoren, titlech, titleen, registerno, certificateno, time);
		
		return SUCCESS;
	}
	
	public String saverjcp()
	{
		saverjcpresult = atran.saverjcp(savecpid, savenamech, savenameen, savephoto);
		return SUCCESS;
	}
	
	
	public String editrjcp()
	{
		spe = atran.editrjcp(editrjcpid);
		return "editrjcp";
	}
	public String deleterjcp()
	{
		deleterjcpresult = atran.deleterjcp(deleterjcpid);
		return SUCCESS;
	}
	public String crjcping()
	{
		atran.crjcping(namech, nameen, photo);
		return "crjcping";
	}
	
	public String createzjcp()
	{
		return "createzjcp";
	}
	public String rjzzq()
	{
		//paperlist = atran.getpapers(backcondition, "ch");
		softcrlist = atran.getsoftwarecrs(backcondition, "ch");
		return "rjzzq";
	}
	public String rjcp()
	{
		//paperlist = atran.getpapers(backcondition, "ch");
		System.out.println(time);
		softplist = atran.getsoftwareproduct("ch");
		return "rjcp";
	}
	
	
	public String deletekyzx()
	{
		//paperlist = atran.getpapers(backcondition, "ch");
		System.out.println(time);
		deletecpresult = atran.deletekyzx(kyzxid);
		
		return SUCCESS;
	}
	public String deletecp()
	{
		//paperlist = atran.getpapers(backcondition, "ch");
		System.out.println(time);
		deletecpresult = atran.deletecp(cpid);
		
		return SUCCESS;
	}
	public String deletezlcg()
	{
		//paperlist = atran.getpapers(backcondition, "ch");
		System.out.println(time);
		deletecpresult = atran.deletezlcg(zlcgid);
		
		return SUCCESS;
	}
	public String creatcp()
	{
		//paperlist = atran.getpapers(backcondition, "ch");
		System.out.println(time);
		createcpresult = atran.creatcp(author, title, publish, time);
		
		return SUCCESS;
	}
	public String creatzlcg()
	{
		//paperlist = atran.getpapers(backcondition, "ch");
		System.out.println(time);
		createcpresult = atran.creatzlcg(author, title, publish, time);
		
		return SUCCESS;
	}
	public String getSaverjcpresult()
	{
		return saverjcpresult;
	}


	public String creatkyzx()
	{
		//paperlist = atran.getpapers(backcondition, "ch");
		System.out.println(time);
		createcpresult = atran.creatkyzx(author, title, publish, time);
		
		return SUCCESS;
	}
	public String rapaper()
	{
		paperlist = atran.getpapers(backcondition, "ch");
		return "rapaper";
	}
	public String rakyzx()
	{
		kyzxlist = atran.getkyzx(backcondition, "ch");
		return "rakyzx";
	}
	public void setSavecpid(int savecpid)
	{
		this.savecpid = savecpid;
	}


	public void setSavenamech(String savenamech)
	{
		this.savenamech = savenamech;
	}


	public void setSavenameen(String savenameen)
	{
		this.savenameen = savenameen;
	}


	public void setSavephoto(String savephoto)
	{
		this.savephoto = savephoto;
	}


	public SoftwareProductEntity getSpe()
	{
		return spe;
	}
	public void setEditrjcpid(int editrjcpid)
	{
		this.editrjcpid = editrjcpid;
	}
	public String getDeleterjcpresult()
	{
		return deleterjcpresult;
	}
	public void setDeleterjcpid(int deleterjcpid)
	{
		this.deleterjcpid = deleterjcpid;
	}
	public String razlcg()
	{
		System.out.println("ssss");
		zlcglist = atran.getzlcg(condition, "ch");
		return "razlcg";
	}
	public String paper()
	{
		basicMethod();
		paperlist = atran.getpapers(condition, lang);
		here="成果论著 >> 学术论著";
		System.out.println(paperlist.size());
		condition = "all";
		return "paper"+lang;
	}
	public String research()
	{
		basicMethod();
		kyzxlist = atran.getkyzx(condition, lang);
		here="成果论著 >> 科研专项";
		return "research"+lang;
	}
	public String patent()
	{
		basicMethod();
		zlcglist = atran.getzlcg(condition, lang);
		here="成果论著 >> 专利成果";
		return "patent"+lang;
	}
	public String swcopyright()
	{
		basicMethod();
		
		softcrlist = atran.getsoftwarecrs(authorname, lang);
		here="成果论著 >> 软件著作权";
		return "swcopyright"+lang;
	}
	public void setNamech(String namech)
	{
		this.namech = namech;
	}

	public void setNameen(String nameen)
	{
		this.nameen = nameen;
	}

	public void setPhoto(String photo)
	{
		this.photo = photo;
	}

	public String software()
	{
		basicMethod();
		
		softplist = atran.getsoftwareproduct(lang);
		here="成果论著 >> 软件产品";
		return "softwarep"+lang;
	}
	public String getHere()
	{
		return here;
	}
	public List<PaperEntity> getPaperlist()
	{
		return paperlist;
	}

	public List<PaperEntity> getZlcglist()
	{
		return zlcglist;
	}
	public void setAtran(AchievementTran atran)
	{
		this.atran = atran;
	}

	public String getDeleterjzzqresult()
	{
		return deleterjzzqresult;
	}

	public void setRjzzqid(int rjzzqid)
	{
		this.rjzzqid = rjzzqid;
	}

	public void setCondition(String condition)
	{
		this.condition = condition;
	}
	public List<SoftwarecrEntity> getSoftcrlist()
	{
		return softcrlist;
	}
	public void setAuthorname(String authorname)
	{
		this.authorname = authorname;
	}
	public List<SoftwareProductEntity> getSoftplist()
	{
		return softplist;
	}
	public String getBackcondition()
	{
		return backcondition;
	}
	public void setZlcgid(int zlcgid)
	{
		this.zlcgid = zlcgid;
	}
	public void setBackcondition(String backcondition)
	{
		this.backcondition = backcondition;
	}
	public String getCreatecpresult()
	{
		return createcpresult;
	}
	public void setKyzxid(int kyzxid)
	{
		this.kyzxid = kyzxid;
	}
	public void setAuthor(String author)
	{
		this.author = author;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public void setPublish(String publish)
	{
		this.publish = publish;
	}
	public void setTime(String time)
	{
		this.time = time;
	}
	public String getDeletecpresult()
	{
		return deletecpresult;
	}
	public void setCpid(int cpid)
	{
		this.cpid = cpid;
	}
	public List<PaperEntity> getKyzxlist()
	{
		return kyzxlist;
	}

	public void setAuthorch(String authorch)
	{
		this.authorch = authorch;
	}

	public void setAuthoren(String authoren)
	{
		this.authoren = authoren;
	}

	public void setTitlech(String titlech)
	{
		this.titlech = titlech;
	}

	public void setTitleen(String titleen)
	{
		this.titleen = titleen;
	}

	public void setRegisterno(String registerno)
	{
		this.registerno = registerno;
	}

	public void setCertificateno(String certificateno)
	{
		this.certificateno = certificateno;
	}

	public String getCreaterjzzqresult()
	{
		return createrjzzqresult;
	}

	
	
}
