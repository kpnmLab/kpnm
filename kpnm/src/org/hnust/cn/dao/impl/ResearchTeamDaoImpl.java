package org.hnust.cn.dao.impl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.hnust.cn.dao.ResearchTeamDao;
import org.hnust.cn.entity.LabPostGraduate;
import org.hnust.cn.entity.LabTeacher;
import org.hnust.cn.pojo.LabNews;
import org.hnust.cn.pojo.Teacher;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class ResearchTeamDaoImpl extends HibernateDaoSupport implements ResearchTeamDao
{

	@SuppressWarnings("unchecked")
	public List<LabTeacher> getlableaders(final String lang, final int typeid)
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String name = "name"+lang;
				String title = "title"+lang;
				String introduce = "introduce"+lang;
				
				String sql = "select id," + name + "," + title + "," + introduce + ",photo from teacher where iId=" + typeid + " order by sort";
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				List<LabTeacher> ltlist = new ArrayList<LabTeacher>();
				while(rs.next())
				{
					LabTeacher smn = new LabTeacher(rs.getInt("id"), rs.getString(name), rs.getString(title), rs.getString("photo"), rs.getString(introduce));
					ltlist.add(smn);
				}
				return ltlist;
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List<LabPostGraduate> getlabpostgraduate(final String sql, final String lang)
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				List<LabPostGraduate> ltlist = new ArrayList<LabPostGraduate>();
				while(rs.next())
				{
					String name = "name"+lang;
					String introduce = "introduce"+lang;
					String tutorname = "tutorname"+ lang;
					
					LabPostGraduate smn = new LabPostGraduate(rs.getInt("id"), rs.getString(name), rs.getString("photo"), 
							rs.getInt("tutor"), rs.getString(tutorname), rs.getString(introduce), rs.getString("grade"), rs.getString("isGraduate"));
					ltlist.add(smn);
				}
				return ltlist;
			}
		});
	}

	public LabTeacher getltinfo(final int teacherid, final String lang)
	{
		return (LabTeacher) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String name = "name"+lang;
				String title = "title"+lang;
				String introduce = "introduce"+lang;
				String other = "other" + lang;
				String project = "project" + lang;
				String overproject = "overProject" + lang;
				String paper = "paper" + lang;
				
				
				String sql = "select id," + name + "," + title + ","+ other + ","+ project + ","+ overproject + ","+ paper + "," + introduce + ",photo,phone,email from teacher where id=" + teacherid + " order by sort";
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				LabTeacher ltinfo = null;
				while(rs.next())
				{
					ltinfo = new LabTeacher(rs.getInt("id"), rs.getString(name), rs.getString(title), rs.getString("photo"), rs.getString(introduce),
							rs.getString(project), rs.getString(overproject), rs.getString(paper), rs.getString(other), rs.getString("phone"), rs.getString("email"));
				}
				return ltinfo;
			}
		});
	}

	public String changertsort(final int thisid, final int previd)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call changertsort(?,?,?)");
				poc.setInt(1, thisid);
				poc.setInt(2, previd);
				poc.setString(3, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	public String creatert(final String namech, final String nameen, final String titlech,
			final String titleen, final String phone, final String email, final String introducech,
			final String introduceen, final String projectch, final String projecten,
			final String overProjectch, final String overProjecten, final String paperch,
			final String paperen, final String otherch, final String otheren, final String photo,
			final String cttype)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call creatert(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				poc.setString(1, namech);
				poc.setString(2, nameen);
				poc.setString(3, titlech);
				poc.setString(4, titleen);
				poc.setString(5, phone);
				poc.setString(6, email);
				poc.setString(7, introducech);
				poc.setString(8, introduceen);
				poc.setString(9, projectch);
				poc.setString(10, projecten);
				poc.setString(11, overProjectch);
				poc.setString(12, overProjecten);
				poc.setString(13, paperch);
				poc.setString(14, paperen);
				poc.setString(15, otherch);
				poc.setString(16, otheren);
				poc.setString(17, photo);
				poc.setString(18, cttype);
				poc.setString(19, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	public String deletert(final int deletertid)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call deletert(?,?)");
				poc.setInt(1, deletertid);
				poc.setString(2, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	@SuppressWarnings("unchecked")
	public Teacher getteacherinfo(final long tid)
	{
		List<Teacher> list = super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Criteria c = session.createCriteria(Teacher.class);
				c.add(Restrictions.eq("id", tid));
				return c.list();
			}
		});
		return list.get(0);
	}

	public String savebasicinfo(final long savebasicinfoid, final String email,
			final String phone, final String namech, final String nameen, final String titlech,
			final String titleen)
	{
		return (String) super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				Connection conn = session.connection();
				CallableStatement poc = conn.prepareCall("call savebasicinfo(?,?,?,?,?,?,?,?)");
				poc.setLong(1, savebasicinfoid);
				poc.setString(2, namech);
				poc.setString(3, nameen);
				poc.setString(4, titlech);
				poc.setString(5, titleen);
				poc.setString(6, phone);
				poc.setString(7, email);
				poc.setString(8, "@result");
				poc.execute();
				//conn.commit();//提交
				
				return poc.getString("result");
				
			}
		});
	}

	public String editrtinfo(final long editrtid, final String ziduan, final String content)
	{
		super.getHibernateTemplate().execute(new 
				HibernateCallback<Object>()
		{

			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String sql = "update teacher set " + ziduan + "='" + content + "' where id="+editrtid;
				System.out.println(sql);
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				return p.execute();
			}
		});
		return "ok";
	}

	@SuppressWarnings("unchecked")
	public List<LabTeacher> getlableaders(final String lang)
	{
		return super.getHibernateTemplate().executeFind(new 
				HibernateCallback<Object>()
		{
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException
			{
				String name = "name"+lang;
				
				String sql = "select id,"+name+" from teacher where id !=7";
				Connection conn = session.connection();
				PreparedStatement p = conn.prepareStatement(sql);
				ResultSet rs = p.executeQuery();
				
				List<LabTeacher> ltlist = new ArrayList<LabTeacher>();
				while(rs.next())
				{
					LabTeacher smn = new LabTeacher(rs.getInt("id"), rs.getString(name));
					ltlist.add(smn);
				}
				return ltlist;
			}
		});
	}

}
