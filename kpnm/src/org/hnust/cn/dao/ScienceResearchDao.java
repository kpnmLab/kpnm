package org.hnust.cn.dao;

import java.util.List;

import org.hnust.cn.entity.LabSituationEntity;
import org.hnust.cn.entity.ProjectEntity;

public interface ScienceResearchDao
{
	public LabSituationEntity getresearchdirection(int id, String lang);
	public List<ProjectEntity> getprojects(String sql, String lang);
	
	public String creatkyxm(String leadernamech,String leadernameen,String namech,String nameen,String fromch,String fromen,String date);
	public String deletekyxm(int deletekyxmrid);
}
