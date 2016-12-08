package org.hnust.cn.tran;

import java.util.List;

import org.hnust.cn.dao.ScienceResearchDao;
import org.hnust.cn.entity.LabSituationEntity;
import org.hnust.cn.entity.ProjectEntity;

public class ScienceResearchTran
{
	private ScienceResearchDao srdao;

	public LabSituationEntity getresearchdirection(int id, String lang)
	{
		return srdao.getresearchdirection(id, lang);
	}
	public String creatkyxm(String leadernamech,String leadernameen,String namech,String nameen,String fromch,String fromen,String date)
	{
		return srdao.creatkyxm(leadernamech, leadernameen, namech, nameen, fromch, fromen, date);
	}
	public String deletekyxm(int deletekyxmrid)
	{
		return srdao.deletekyxm(deletekyxmrid);
	}
	public List<ProjectEntity> getprojects(String teachername, String lang)
	{
		String leadername = "leadername"+lang;
		String name = "name"+lang;
		String from = "from"+ lang;
		String sql = "";
		if("all".equals(teachername) || "".equals(teachername))
		{
			sql = "select id, tId,date,"+ leadername+","+name+","+from+" from project order by sort desc";
		}
		else
		{
			sql = "select id, tId,date,"+ leadername+","+name+","+from+" from project where "+leadername + "='" +teachername+ "' order by sort desc";
		}
		
		System.out.println(sql);
		return srdao.getprojects(sql, lang);
	}
	
	public void setSrdao(ScienceResearchDao srdao)
	{
		this.srdao = srdao;
	}
	
	
	
}
