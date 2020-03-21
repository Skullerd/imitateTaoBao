package com.tb.adminbll;

import java.util.ArrayList;
import java.util.List;

import com.tb.utils.BaseBll;

public class Admin extends BaseBll{
	public int checklogin(String aname,String apwd){
		String sql = "select aid from taobao_admin where aname=? and apwd=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(aname);
		paras.add(apwd);
		Object oaid = j.queryOne(sql, paras);
		int aid = oaid==null?0:Integer.valueOf(oaid.toString());
		return aid;
	}
}
