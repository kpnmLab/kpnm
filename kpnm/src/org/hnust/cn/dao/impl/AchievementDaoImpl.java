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
import org.hnust.cn.dao.AchievementDao;
import org.hnust.cn.entity.LabTeacher;
import org.hnust.cn.entity.PaperEntity;
import org.hnust.cn.entity.ProjectEntity;
import org.hnust.cn.entity.SoftwareProductEntity;
import org.hnust.cn.entity.SoftwarecrEntity;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class AchievementDaoImpl extends HibernateDaoSupport implements AchievementDao
{

	@SuppressWarnings("unchecked")
	public List<PaperEntity> getzlcg(final String sql, final String lang)
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
				System.out.println(sql);
				List<PaperEntity> ltlist = new ArrayList<PaperEntity>();
				while(rs.next())
				{
					String person = "person"+lang;
					
					PaperEntity smn = new PaperEntity(rs.getInt("id"), rs.getString(person), rs.getString("name"), rs.getString("type"), rs.getString("date"));
					ltlist.add(smn);
				}
				return ltlist;
			}
				});
	}
	@SuppressWarnings("unchecked")
	public List<PaperEntity> getkyzx(final String sql, final String lang)
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
				System.out.println(sql);
				List<PaperEntity> ltlist = new ArrayList<PaperEntity>();
				while(rs.next())
				{
					String person = "person"+lang;
					
					PaperEntity smn = new PaperEntity(rs.getInt("id"), rs.getString(person), rs.getString("thing"), rs.getString("name"), rs.getString("date"));
					ltlist.add(smn);
				}
				return ltlist;
			}
				});
	}
	@SuppressWarnings("unchecked")
	public List<PaperEntity> getpapers(final String sql, final String lang)
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
				System.out.println(sql);
				List<PaperEntity> ltlist = new ArrayList<PaperEntity>();
				while(rs.next())
				{
					String person = "person"+lang;
					
					PaperEntity smn = new PaperEntity(rs.getInt("id"), rs.getString(person), rs.getString("title"), rs.getString("publication"), rs.getString("date"));
					ltlist.add(smn);
				}
				return ltlist;
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List<SoftwarecrEntity> getsoftwarecrs(final String sql, final String lang)
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
				System.out.println(sql);
				List<SoftwarecrEntity> ltlist = new ArrayList<SoftwarecrEntity>();
				while(rs.next())
				{
					String author = "author"+lang;
					String title = "title"+lang;
					
					SoftwarecrEntity smn = new SoftwarecrEntity(rs.getInt("id"), rs.getString(author), rs.getString(title), rs.getString("registerno"), rs.getString("certificateno"), rs.getString("date"));
					ltlist.add(smn);
				}
				return ltlist;
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List<SoftwareProductEntity> getsoftwareproduct(final String lang)
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				String name = "name"+lang;
				String sql = "select id,"+name+",photo from softwareproduct order by id desc";
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				List<SoftwareProductEntity> ltlist = new ArrayList<SoftwareProductEntity>();
				while(rs.next())
				{
					
					SoftwareProductEntity smn = new SoftwareProductEntity(rs.getInt("id"), rs.getString(name), rs.getString("photo"));
					ltlist.add(smn);
				}
				return ltlist;
			}
		});
	}

	public String creatcp(final String author, final String title, final String publish,
			final String time)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call creatcp(?,?,?,?,?)");
				poc.setString(1, author);
				poc.setString(2, title);
				poc.setString(3, publish);
				poc.setString(4, time);
				poc.setString(5, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	public String deletecp(final int cpid)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String sql = "delete from paper where id="+cpid;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				return p.execute();
			}
		});
		return "ok";
	}
	public String creatkyzx(final String author, final String title, final String publish,
			final String time)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
				{
			
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call creatkyzx(?,?,?,?,?)");
				poc.setString(1, author);
				poc.setString(2, title);
				poc.setString(3, publish);
				poc.setString(4, time);
				poc.setString(5, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
				});
	}
	
	public String deletekyzx(final int kyzxid)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
				{
			
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException
			{
				String sql = "delete from award where id="+kyzxid;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				return p.execute();
			}
				});
		return "ok";
	}
	public String creatzlcg(final String author, final String title, final String publish,
			final String time)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
				{
			
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call creatzlcg(?,?,?,?,?)");
				poc.setString(1, author);
				poc.setString(2, title);
				poc.setString(3, publish);
				poc.setString(4, time);
				poc.setString(5, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
				});
	}
	
	public String deletezlcg(final int zlcgid)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
				{
			
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException
			{
				String sql = "delete from patent where id="+zlcgid;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				return p.execute();
			}
				});
		return "ok";
	}
	public String crjcping(final String namech, final String nameen, final String photo)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
				{
			
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException
			{
				String sql = "insert into softwareproduct(namech,nameen,photo) values('"+ namech + "','" + nameen + "','" + photo +"')";
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				return p.execute();
			}
				});
		return "ok";
	}
	public String deleterjcp(final int deleterjcpid)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
				{
			
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException
			{
				String sql = "delete from softwareproduct where id="+deleterjcpid;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				return p.execute();
			}
				});
		return "ok";
	}
	public SoftwareProductEntity editrjcp(final int editrjcpid)
	{
		return (SoftwareProductEntity) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				
				String sql = "select * from softwareproduct where id="+editrjcpid;
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				SoftwareProductEntity spn = null;
				while(rs.next())
				{
					spn = new SoftwareProductEntity(rs.getInt("id"), rs.getString("namech"), rs.getString("nameen"), rs.getString("photo"));
				}
				return spn;
			}
		});
	}
	public String saverjcp(final int id, final String namech, final String nameen, final String photo)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
				{
			
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException
			{
				String sql = "update softwareproduct set namech='"+ namech + "',nameen='" + nameen + "',photo='" + photo +"' where id=" + id;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				return p.execute();
			}
				});
		return "ok";
	}
	public String creatrjzzq(final String authorch, final String authoren, final String titlech,
			final String titleen, final String registerno, final String certificateno, final String time)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call creatrjzzq(?,?,?,?,?,?,?,?)");
				poc.setString(1, authorch);
				poc.setString(2, authoren);
				poc.setString(3, titlech);
				poc.setString(4, titleen);
				poc.setString(5, registerno);
				poc.setString(6, certificateno);
				poc.setString(7, time);
				poc.setString(8, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}
	public String deleterjzzq(final int rjzzqid)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
				{
			
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException
			{
				String sql = "delete from softwarecr where id="+rjzzqid;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				return p.execute();
			}
				});
		return "ok";
	}

}
