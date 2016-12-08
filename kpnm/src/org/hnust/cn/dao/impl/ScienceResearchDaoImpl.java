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
import org.hnust.cn.dao.ScienceResearchDao;
import org.hnust.cn.entity.LabPostGraduate;
import org.hnust.cn.entity.LabSituationEntity;
import org.hnust.cn.entity.ProjectEntity;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ScienceResearchDaoImpl extends HibernateDaoSupport implements ScienceResearchDao
{

	public LabSituationEntity getresearchdirection(final int id, final String lang)
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
	public List<ProjectEntity> getprojects(final String sql, final String lang)
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				List<ProjectEntity> ltlist = new ArrayList<ProjectEntity>();
				while(rs.next())
				{
					String leadername = "leadername"+lang;
					String name = "name"+lang;
					String from = "from"+ lang;
					
					ProjectEntity smn = new ProjectEntity(rs.getInt("id"), rs.getInt("tId"), rs.getString(leadername), rs.getString(name), rs.getString("date"), rs.getString(from));
					ltlist.add(smn);
				}
				return ltlist;
			}
		});
	}

	public String creatkyxm(final String leadernamech, final String leadernameen,
			final String namech, final String nameen, final String fromch, final String fromen,
			final String date)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call creatkyxm(?,?,?,?,?,?,?,?)");
				poc.setString(1, leadernamech);
				poc.setString(2, leadernameen);
				poc.setString(3, namech);
				poc.setString(4, nameen);
				poc.setString(5, fromch);
				poc.setString(6, fromen);
				poc.setString(7, date);
				poc.setString(8, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	public String deletekyxm(final int deletekyxmrid)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
				{
			
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException
			{
				String sql = "delete from project where id="+deletekyxmrid;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				return p.execute();
			}
				});
		return "ok";
	}

}
