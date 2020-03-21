package com.tb.bll;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.tb.utils.BaseBll;

public class Cart extends BaseBll{
	/*
	 * 如果用户已经购买了该汽车
	 * 更新数量
	 * 否则
	 * 添加
	 * */
	public void add(int cpid,int cnum,int cuid){
		if(ckeckCart(cpid,cuid)){
			updateNum(cpid,cnum,cuid);
		}else {
			addcart(cpid,cnum,cuid);
		}
	}

	private int addcart(int cpid, int cnum, int cuid) {
		// TODO Auto-generated method stub
		String sql = "insert into taobao_cart(cpid,cnum,cuid,cdate) values(?,?,?,now())";
		List<Object> paras = new ArrayList<Object>();
		paras.add(cpid);
		paras.add(cnum);
		paras.add(cuid);
		return j.update(sql, paras);
	}

	private int updateNum(int cpid, int cnum, int cuid) {
		// TODO Auto-generated method stub
		String sql = "update taobao_cart set cnum=cnum+? where cpid=? and cuid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(cnum);
		paras.add(cpid);
		paras.add(cuid);
		return j.update(sql, paras);
	}

	private boolean ckeckCart(int cpid, int cuid) {
		// TODO Auto-generated method stub
		String sql = "select count(*) from taobao_cart where cpid=? and cuid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(cpid);
		paras.add(cuid);
		int num = Integer.valueOf(j.queryOne(sql, paras).toString());
		return num>0;
	}
	
	public Map<String, Object> getCartcuid(int uid){
		String sql = "select cuid from taobao_cart where cuid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(uid);
		return j.queryOneRow(sql, paras);
	}
	
	public int delete(int cid){
		String sql = "delete from taobao_cart where cid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(cid);
		return j.update(sql, paras);
	}
	
	public int delete_cuid(int cuid){
		String sql = "delete from taobao_cart where cuid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(cuid);
		return j.update(sql, paras);
	}
	
	public List<Map<String, Object>> getCartList(int uid){
		String sql = "select cid,cnum,pid,pname,ppic,pprice from taobao_cart inner join taobao_product on cpid=pid where cuid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(uid);
		return j.query(sql, paras);
	}
	
	public void updateNum(){
		String sql = "update taobao_cart set cnum";
	}
	
	public void update(String[] nums,String[] cids){
		for(int i = 0;i<nums.length;i++){
			int num = Integer.valueOf(nums[i]);
			int cid = Integer.valueOf(cids[i]);
			updateNum(num, cid);
		}
	}
	
	public void updateNum(int num,int cid){
		String sql="update taobao_cart set cnum=? where cid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(num);
		paras.add(cid);
		j.update(sql, paras);
	}
}
