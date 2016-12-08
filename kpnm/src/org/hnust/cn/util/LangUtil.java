package org.hnust.cn.util;

import java.util.Map;

public class LangUtil
{
	public static String getLang(Map<String, Object> session)
	{
		String lang = "ch";
		if(session.get("lang") != null)
		{
			lang = (String) session.get("lang");
		}
		return lang;
	}
	public static String changeversion(Map<String, Object> session,String version)
	{
		session.put("lang", version);
		return "ok";
	}
}
