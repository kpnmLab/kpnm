package org.hnust.cn.dao.impl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hnust.cn.dao.LabDao;
import org.hnust.cn.entity.LabInfo;
import org.hnust.cn.entity.LabSituationEntity;
import org.hnust.cn.entity.SystemmanageEntity;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class LabDaoImpl extends HibernateDaoSupport implements LabDao
{

	public LabSituationEntity getlabinfo(final String lang, final int id)
	{
		return (LabSituationEntity) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String title = "name"+lang;
				String content = "content"+lang;
				
				String sql = "select " + title + "," + content + ",updatedate from labinfo where id=" + id;
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				LabSituationEntity lsn = null;
				if(rs.next())
				{
					lsn = new LabSituationEntity(rs.getString(title), rs.getString(content), rs.getTimestamp("updatedate"));
				}
				return lsn;
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List<SystemmanageEntity> getsystemmanageinfo(final String lang,
			final int typeinfo)
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String title = "name"+lang;
				
				String sql = "select id," + title + " from labinfo where infotype=" + typeinfo;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				List<SystemmanageEntity> smnlist = new ArrayList<SystemmanageEntity>();
				while(rs.next())
				{
					SystemmanageEntity smn = new SystemmanageEntity(rs.getInt("id"), rs.getString(title));
					smnlist.add(smn);
				}
				return smnlist;
			}
		});
		
	}

	public LabInfo getlabinfo(final int id)
	{
		return (LabInfo) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String sql = "select id,contentch,contenten from labinfo where id=" + id;
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				LabInfo lsn = null;
				if(rs.next())
				{
					lsn = new LabInfo(rs.getInt("id"), rs.getString("contentch"), rs.getString("contenten"));
				}
				return lsn;
			}
		});
	}

	public String updatelabinfocontent(final int updateinfoid, final String content,
			final String language)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call updatelabinfocontent(?,?,?,?)");
				poc.setInt(1, updateinfoid);
				poc.setString(2, content);
				poc.setString(3, language);
				poc.setString(4, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List<LabInfo> getzdgl()
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String sql = "select id,namech,updatedate,count from labinfo where infotype=5";
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				List<LabInfo> smnlist = new ArrayList<LabInfo>();
				while(rs.next())
				{
					LabInfo linfo = new LabInfo(rs.getInt("id"), rs.getString("namech"), rs.getInt("count"),
							rs.getTimestamp("updatedate"));
					smnlist.add(linfo);
				}
				return smnlist;
			}
		});
	}

	public String csystem(final String titlech, final String titleen, final String contentch,
			final String contenten)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call csystem(?,?,?,?,?)");
				poc.setString(1, titlech);
				poc.setString(2, titleen);
				poc.setString(3, contentch);
				poc.setString(4, contenten);
				poc.setString(5, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	public LabInfo editsystem(final int editsid)
	{
		return (LabInfo) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String sql = "select id, namech,nameen,contentch,contenten from labinfo where id=" + editsid;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				LabInfo lsn = null;
				if(rs.next())
				{
					lsn = new LabInfo(rs.getInt("id"), rs.getString("namech"), rs.getString("nameen"), rs.getString("contentch"),
							rs.getString("contenten"));
				}
				return lsn;
			}
		});
	}

	public String editzd(final int editzdid, final String titlech, final String titleen,
			final String contentch, final String contenten)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call editzd(?,?,?,?,?,?)");
				poc.setInt(1, editzdid);
				poc.setString(2, titlech);
				poc.setString(3, titleen);
				poc.setString(4, contentch);
				poc.setString(5, contenten);
				poc.setString(6, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	public String deletezd(final int deletezdid)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call deletezd(?,?)");
				poc.setInt(1, deletezdid);
				poc.setString(2, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

}
