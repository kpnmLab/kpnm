package org.hnust.cn.dao;

import java.util.List;

import org.hnust.cn.entity.PaperEntity;
import org.hnust.cn.entity.SoftwareProductEntity;
import org.hnust.cn.entity.SoftwarecrEntity;

public interface AchievementDao
{
	public List<PaperEntity> getpapers(String sql, String lang);
	public List<PaperEntity> getkyzx(String sql, String lang);
	public List<PaperEntity> getzlcg(String sql, String lang);
	public List<SoftwarecrEntity> getsoftwarecrs(String sql, String lang);
	public List<SoftwareProductEntity> getsoftwareproduct(String lang);
	public String creatcp(String author, String title, String publish, String time);
	public String deletecp(int cpid);
	
	public String creatkyzx(String author, String title, String publish, String time);
	public String creatrjzzq(String authorch,String authoren, String titlech, String titleen, String registerno,String certificateno, String time);
	public String deletekyzx(int kyzxid);
	public String creatzlcg(String author, String title, String publish, String time);
	public String deletezlcg(int zlcgid);
	public String deleterjzzq(int rjzzqid);
	public String deleterjcp(int deleterjcpid);
	
	
	public String crjcping(String namech,String nameen,String photo);
	public String saverjcp(int id,String namech,String nameen,String photo);
	
	public SoftwareProductEntity editrjcp(int editrjcpid);
}
