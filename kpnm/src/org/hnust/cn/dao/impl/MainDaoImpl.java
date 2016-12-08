package org.hnust.cn.dao.impl;

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
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.hnust.cn.dao.MainDao;
import org.hnust.cn.pojo.HotNews;
import org.hnust.cn.pojo.LabNews;
import org.hnust.cn.pojo.Links;
import org.hnust.cn.pojo.SlidePicture;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MainDaoImpl extends HibernateDaoSupport implements MainDao
{

	@SuppressWarnings("unchecked")
	public List<LabNews> getTopNews(final int findex, final int maxnum, final String lang, final String keywords)
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			String title = "title" + lang;
			String sql = "select new LabNews(id, titlech, titleen, publishdate) from LabNews where " + title + " like '%" +keywords+ "%' and status='已发布' order by rank desc";
			
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

	public String getLabDesc(final String lang)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String sql = "select content"+lang+" from labinfo where id=128";
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				if(rs.next())
					return rs.getString("content"+lang);
				else
					return null;
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List<Links> getLinks()
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Criteria c = session.createCriteria(Links.class);
				c.addOrder(Order.asc("rank"));
				return c.list();
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List<SlidePicture> getSlidePictures()
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Criteria c = session.createCriteria(SlidePicture.class);
				c.addOrder(Order.asc("rank"));
				return c.list();
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List<HotNews> getHotNews()
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Criteria c = session.createCriteria(HotNews.class);
				c.addOrder(Order.desc("publishdate"));
				c.add(Restrictions.eq("status", "已发布"));
				c.setFirstResult(0);
				c.setMaxResults(5);
				return c.list();
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


}
