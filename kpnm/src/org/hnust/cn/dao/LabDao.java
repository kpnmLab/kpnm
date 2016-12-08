package org.hnust.cn.dao;

import java.util.List;

import org.hnust.cn.entity.*;

public interface LabDao
{
	public LabSituationEntity getlabinfo(String lang, int id);
	public List<SystemmanageEntity> getsystemmanageinfo(String lang, int typeinfo);
	public LabInfo getlabinfo(int id);
	public String updatelabinfocontent(int updateinfoid,String content, String language);
	public List<LabInfo> getzdgl();
	public String csystem(String titlech,String titleen,String contentch,String contenten);
	public LabInfo editsystem(int editsid);
	public String editzd(int editzdid,String titlech,String titleen,String contentch,String contenten);
	public String deletezd(int deletezdid);
	
}
