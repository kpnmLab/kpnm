package org.hnust.cn.tran;

import java.util.List;

import org.hnust.cn.dao.LabDao;
import org.hnust.cn.entity.LabInfo;
import org.hnust.cn.entity.LabSituationEntity;
import org.hnust.cn.entity.SystemmanageEntity;

public class LabTran
{
	private LabDao labdao;

	public String csystem(String titlech,String titleen,String contentch,String contenten)
	{
		return labdao.csystem(titlech, titleen, contentch, contenten);
	}
	public LabSituationEntity getlabinfo(String lang, int id)
	{
		return labdao.getlabinfo(lang, id);
	}
	public String editzd(int editzdid,String titlech,String titleen,String contentch,String contenten)
	{
		return labdao.editzd(editzdid, titlech, titleen, contentch, contenten);
	}
	public String deletezd(int deletezdid)
	{
		return labdao.deletezd(deletezdid);
	}
	public LabInfo getlabinfo(int id)
	{
		return labdao.getlabinfo(id);
	}
	public LabInfo editsystem(int editsid)
	{
		return labdao.editsystem(editsid);
	}
	public List<SystemmanageEntity> getsystemmanageinfo(String lang, int typeinfo)
	{
		return labdao.getsystemmanageinfo(lang, typeinfo);
	}
	public String updatelabinfocontent(int updateinfoid,String content, String language)
	{
		return labdao.updatelabinfocontent(updateinfoid, content, language);
	}
	public List<LabInfo> getzdgl()
	{
		return labdao.getzdgl();
	}
	
	public void setLabdao(LabDao labdao)
	{
		this.labdao = labdao;
	}
	
}
