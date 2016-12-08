package org.hnust.cn.action;

import java.util.List;

import org.hnust.cn.entity.LabInfo;
import org.hnust.cn.entity.LabSituationEntity;
import org.hnust.cn.entity.SystemmanageEntity;
import org.hnust.cn.tran.LabTran;

public class LabAction extends BasicAction
{
	private LabTran labtran;
	
	private LabSituationEntity lsn;
	private String here;
	private List<SystemmanageEntity> smnlist;
	private int infoid;
	private LabInfo linfo;
	
	private int updateinfoid;
	private String content;
	private String language;
	private String updateresult;
	
	private List<LabInfo> zdgllist;
	
	private String titlech;
	private String titleen;
	private String contentch;
	private String contenten;
	
	private int editsid; 
	private LabInfo elinfo;
	
	private String editzdresult;
	private String deletezdresult;
	
	
	private int editzdid;
	private int deletezdid;
	
	public String editzd()
	{
		editzdresult = labtran.editzd(editzdid, titlech, titleen, contentch, contenten);
		return SUCCESS;
	}
	public String deletezd()
	{
		System.out.println(deletezdid);
		deletezdresult = labtran.deletezd(deletezdid);
		return SUCCESS;
	}
	
	public String editsystem()
	{
		elinfo = labtran.editsystem(editsid);
		return "editsystem";
	}
	
	public String csystem()
	{
		labtran.csystem(titlech, titleen, contentch, contenten);
		return "csystem";
	}
	
	public String createzd()
	{
		return "createzd";
	}
	
	public String updatelc()
	{
		updateresult = labtran.updatelabinfocontent(updateinfoid, content, language);
		System.out.println(language);
		return SUCCESS;
	}

	//后台默认界面
	public String backdefault()
	{
		return "backdefault";
	}
	//后台实验室简介
	public String backsysjj()
	{
		linfo = labtran.getlabinfo(128);
		return "backsysjj";
	}
	//后台研究方向
	public String backyjfx()
	{
		linfo = labtran.getlabinfo(130);
		return "backyjfx";
	}
	//后台学术委员会
	public String backxswyh()
	{
		linfo = labtran.getlabinfo(131);
		return "backxswyh";
	}
	//后台机构设置
	public String backjgsz()
	{
		linfo = labtran.getlabinfo(129);
		return "backjgsz";
	}
	//后台制度管理
	public String backzdgl()
	{
		//linfo = labtran.getlabinfo(129);
		zdgllist = labtran.getzdgl();
		return "backzdgl";
	}
	//后台开放基金
	public String backkfjj()
	{
		linfo = labtran.getlabinfo(139);
		return "backkfjj";
	}
	
	//实验室委员会
	public String scienceacademy()
	{
		basicMethod();
		lsn = labtran.getlabinfo(lang, 131);
		here = "实验室概况 >> 学术委员会";
		return "labsituation"+lang;
	}
	
	//机构设置
	public String organizationset()
	{
		basicMethod();
		lsn = labtran.getlabinfo(lang, 129);
		here = "实验室概况 >> 机构设置";
		return "labsituation"+lang;
	}
	
	//制度管理 具体内容
	public String manageinfo()
	{
		basicMethod();
		lsn = labtran.getlabinfo(lang, infoid);
		here = "实验室概况 >> 机构设置";
		return "labsituation"+lang;
	}
	
	//制度管理
	public String systemmanage()
	{
		basicMethod();
		smnlist = labtran.getsystemmanageinfo(lang, 5);
		here = "实验室概况 >> 制度管理";
		System.out.println(smnlist.size());
		return "systemmanage"+lang;
	}
	
	//开放基金
	public String openfund()
	{
		basicMethod();
		lsn = labtran.getlabinfo(lang, 139);
		here = "实验室概况 >> 开放基金";
		return "labsituation"+lang;
	}
	
	public void setLabtran(LabTran labtran)
	{
		this.labtran = labtran;
	}


	public LabSituationEntity getLsn()
	{
		return lsn;
	}


	public void setEditzdid(int editzdid)
	{
		this.editzdid = editzdid;
	}
	public String getEditzdresult()
	{
		return editzdresult;
	}

	public List<LabInfo> getZdgllist()
	{
		return zdgllist;
	}

	public String getHere()
	{
		return here;
	}

	public List<SystemmanageEntity> getSmnlist()
	{
		return smnlist;
	}

	public String getDeletezdresult()
	{
		return deletezdresult;
	}
	public void setInfoid(int infoid)
	{
		this.infoid = infoid;
	}
	public LabInfo getLinfo()
	{
		return linfo;
	}
	public void setUpdateinfoid(int updateinfoid)
	{
		this.updateinfoid = updateinfoid;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	public void setLanguage(String language)
	{
		this.language = language;
	}

	public String getUpdateresult()
	{
		return updateresult;
	}

	public void setTitlech(String titlech)
	{
		this.titlech = titlech;
	}

	public void setDeletezdid(int deletezdid)
	{
		this.deletezdid = deletezdid;
	}
	public void setTitleen(String titleen)
	{
		this.titleen = titleen;
	}

	public void setContentch(String contentch)
	{
		this.contentch = contentch;
	}

	public void setContenten(String contenten)
	{
		this.contenten = contenten;
	}

	public void setEditsid(int editsid)
	{
		this.editsid = editsid;
	}

	public LabInfo getElinfo()
	{
		return elinfo;
	}

	
}
