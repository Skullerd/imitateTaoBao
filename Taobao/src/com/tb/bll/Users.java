package com.tb.bll;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.tb.utils.BaseBll;

public class Users extends BaseBll{
	public Map<String,Object> checkuser(String uname,String upwd){
		String sql = "select * from taobao_user where uname=? and upwd=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(uname);
		paras.add(upwd);
		return j.queryOneRow(sql, paras);
	}
	
	public boolean checkUname(String uname){
		String sql = "select count(*) from taobao_user where uname=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(uname);
		Object onum=j.queryOne(sql, paras);
		int num = Integer.valueOf(onum.toString());
		return num>0;
	}
	
	public int insertUser(String uname,String upwd,String uemail){
		String sql = "insert into taobao_user(uname,upwd,uemail,udate) values(?,?,?,now())";
		List<Object> paras = new ArrayList<Object>();
		paras.add(uname);
		paras.add(upwd);
		paras.add(uemail);
		return j.update(sql, paras);
		
	}
}
