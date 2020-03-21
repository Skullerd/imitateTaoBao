package com.tb.bll;

import java.util.ArrayList;
import java.util.List;

import com.tb.utils.BaseBll;

public class Register extends BaseBll{
	
	public int adduser(String uname,String upwd,String uemail,String udate){
		String sql = "insert into taobao_user(uname,upwd,uemail,udate) values(?,?,?, now())";
		List<Object> paras = new ArrayList<Object>();
		paras.add(uname);
		paras.add(upwd);
		paras.add(uemail);
		int rs = j.update(sql, paras);
		return rs;
	}
	
	public Object checknewuser(String uname){
		String sql = "select uid from taobao_user where uname=?";
		List<Object> paras = new ArrayList<Object>();
		   paras.add(uname);
		   Object ocount = j.queryOne(sql, paras);
		   return ocount;
	}

}
