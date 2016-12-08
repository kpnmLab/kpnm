package org.hnust.cn.tran;

import java.util.List;

import org.hnust.cn.dao.AchievementDao;
import org.hnust.cn.dao.ScienceResearchDao;
import org.hnust.cn.entity.LabSituationEntity;
import org.hnust.cn.entity.PaperEntity;
import org.hnust.cn.entity.ProjectEntity;
import org.hnust.cn.entity.SoftwareProductEntity;
import org.hnust.cn.entity.SoftwarecrEntity;

public class AchievementTran
{
	private AchievementDao srdao;

	
	public String creatrjzzq(String authorch,String authoren, String titlech, String titleen, String registerno,String certificateno, String time)
	{
		return srdao.creatrjzzq(authorch, authoren, titlech, titleen, registerno, certificateno, time);
	}
	public String saverjcp(int id,String namech,String nameen,String photo)
	{
		return srdao.saverjcp(id, namech, nameen, photo);
	}
	
	public SoftwareProductEntity editrjcp(final int editrjcpid)
	{
		return srdao.editrjcp(editrjcpid);
	}
	public String deleterjcp(final int deleterjcpid)
	{
		return srdao.deleterjcp(deleterjcpid);
	}
	public String crjcping(String namech,String nameen,String photo)
	{
		return srdao.crjcping(namech, nameen, photo);
	}
	public String deletecp(int cpid)
	{
		return srdao.deletecp(cpid);
	}
	public String deletezlcg(int zlcgid)
	{
		return srdao.deletezlcg(zlcgid);
	}
	public String deletekyzx(int cpid)
	{
		return srdao.deletekyzx(cpid);
	}
	public String creatcp(String author, String title, String publish, String time)
	{
		return srdao.creatcp(author, title, publish, time);
	}
	public String creatzlcg(String author, String title, String publish, String time)
	{
		return srdao.creatzlcg(author, title, publish, time);
	}
	public String creatkyzx(String author, String title, String publish, String time)
	{
		return srdao.creatkyzx(author, title, publish, time);
	}
	public List<PaperEntity> getkyzx(String personname, String lang)
	{
		String person = "person"+lang;
		String sql = "";
		if("all".equals(personname) || "".equals(personname))
		{
			sql = "select id, thing,name,date,"+ person+" from award order by sort desc";
		}
		else
		{
			sql = "select id, thing,name,date,"+ person+" from award where "+ person+"='"+personname+"' order by sort desc";
		}
		
		System.out.println(sql);
		return srdao.getkyzx(sql, lang);
	}
	public List<PaperEntity> getzlcg(String personname, String lang)
	{
		String person = "person"+lang;
		String sql = "";
		if("all".equals(personname) || "".equals(personname))
		{
			sql = "select id, name,type,date,"+ person+" from patent order by sort desc";
		}
		else
		{
			sql = "select id, name,type,date,"+ person+" from patent where "+ person+"='"+personname+"' order by sort desc";
		}
		
		System.out.println(sql);
		return srdao.getzlcg(sql, lang);
	}
	public List<PaperEntity> getpapers(String personname, String lang)
	{
		String person = "person"+lang;
		String sql = "";
		if("all".equals(personname) || "".equals(personname))
		{
			sql = "select id, title,publication,date,"+ person+" from paper order by sort desc";
		}
		else
		{
			sql = "select id, title,publication,date,"+ person+" from paper where "+ person+"='"+personname+"' order by sort desc";
		}
		
		System.out.println(sql);
		return srdao.getpapers(sql, lang);
	}
	public List<SoftwarecrEntity> getsoftwarecrs(String authorname, String lang)
	{
		String author = "author"+lang;
		String title = "title"+lang;
		String sql = "";
		if("all".equals(authorname))
		{
			sql = "select id, registerno, certificateno,date,"+ author +","+title+" from softwarecr order by sort desc";
		}
		else
		{
			sql = "select id, registerno, certificateno,date,"+ author +","+title+" from softwarecr where "+ author + " like '%" + authorname +"%' order by sort desc";
		}
		return srdao.getsoftwarecrs(sql, lang);
	}
	public List<SoftwareProductEntity> getsoftwareproduct(String lang)
	{
		return srdao.getsoftwareproduct(lang);
	}

	public void setSrdao(AchievementDao srdao)
	{
		this.srdao = srdao;
	}
	public String deleterjzzq(int rjzzqid)
	{
		// TODO Auto-generated method stub
		return srdao.deleterjzzq(rjzzqid);
	}
	
	
	
}
