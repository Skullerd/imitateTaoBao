package com.tb.bll;

import java.util.ArrayList;
import java.util.List;

import com.tb.utils.BaseBll;

public class Orders extends BaseBll{
	public double getTotal(int uid){
		String sql = "select sum(pprice*cnum) from taobao_cart inner join taobao_product on cpid=pid where cuid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(uid);
		Object ototal = j.queryOne(sql, paras);
		return Double.valueOf(ototal.toString());
	}
	
	public int add(String oname,String otel,String oaddress,int ouid){
		double ototal = getTotal(ouid);
		int oid = addOrders(oname, otel, oaddress, ouid, ototal);
		addItems(oid, ouid);
		return oid;		
	}
	
	public int addOrders(String oname,String otel,String oaddress,int ouid,double ototal){
		String sql = "insert into taobao_order(oname,otel,oaddress,ouid,ototal,odate) values(?,?,?,?,?,now())";
		List<Object> paras = new ArrayList<Object>();
		paras.add(oname);
		paras.add(otel);
		paras.add(oaddress);
		paras.add(ouid);
		paras.add(ototal);
		return j.insertReturntID(sql, paras);
	}
	
	public void addItems(int oid,int uid){
		String sql="insert into taobao_items(ipid,inum,ipprice,ioid) select cpid,cnum,pprice,? from taobao_cart inner join taobao_product on cpid=pid where cuid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(oid);
		paras.add(uid);
		j.update(sql, paras);
	}
}
