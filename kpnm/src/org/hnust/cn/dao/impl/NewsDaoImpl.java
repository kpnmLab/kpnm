package org.hnust.cn.dao.impl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hnust.cn.dao.NewsDao;
import org.hnust.cn.pojo.LabNews;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class NewsDaoImpl extends HibernateDaoSupport implements NewsDao
{

	@SuppressWarnings("unchecked")
	public LabNews getDetailNews(final long newsid)
	{
		List<LabNews> list = super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Criteria c = session.createCriteria(LabNews.class);
				c.add(Restrictions.eq("id", newsid));
				return c.list();
			}
		});
		return list.get(0);
	}

	@SuppressWarnings("unchecked")
	public List<LabNews> getTopNews(final int findex, final int maxnum, final String lang, final String keywords)
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			String title = "title" + lang;
			String sql = "select new LabNews(id, titlech, publishdate, status) from LabNews where " + title + " like '%" +keywords+ "%' order by rank desc";
			
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Transaction tx = session.beginTransaction();
				Query query = session.createQuery(sql);
				query.setFirstResult(findex);
				query.setMaxResults(maxnum);
				tx.commit();
				return query.list();
			}
		});
	}
	public int totalnewsnum()
	{
		return (Integer) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String sql = "select count(*) as totalnewsnum from labnews";
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				if(rs.next())
					return rs.getInt("totalnewsnum");
				else
					return null;
			}
		});
	}

	public String updatelabnews(final int updatenewsid, final String title,
			final String publisher, final String content, final String language)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call updatenews(?,?,?,?,?,?)");
				poc.setInt(1, updatenewsid);
				poc.setString(2, title);
				poc.setString(3, publisher);
				poc.setString(4, content);
				poc.setString(5, language);
				poc.setString(6, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	public void createnews(final String titlech, final String titleen, final String publisherch,
			final String publisheren, final String contentch, final String contenten, final String ischn,
			final String hnimglink,final String sipublish)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call createnews(?,?,?,?,?,?,?,?,?)");
				poc.setString(1, titlech);
				poc.setString(2, titleen);
				poc.setString(3, publisherch);
				poc.setString(4, publisheren);
				poc.setString(5, contentch);
				poc.setString(6, contenten);
				poc.setString(7, ischn);
				poc.setString(8, hnimglink);
				poc.setString(9, sipublish);
				return poc.execute();
			}
		});
		
	}

	public void publishnews(final int publishnewsid)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call publishnews(?,?)");
				poc.setInt(1, publishnewsid);
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
			}
		});
		
	}

	public String deletenews(final int deletenewsid)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call deletenews(?,?)");
				poc.setInt(1, deletenewsid);
				poc.setString(2, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

}
