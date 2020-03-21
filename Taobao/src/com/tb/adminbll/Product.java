package com.tb.adminbll;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.tb.utils.BaseBll;
import com.tb.utils.PageSet;

public class Product extends BaseBll{
	public int addProduct(String pname,float pprice,int pcid,String pcontent,String ppic,int phot,int pnew,int pcheap){
		String sql = "insert into taobao_product(pname,pprice,pcid,pcontent,ppic,pdate,pgd,plove,plike) value(?,?,?,?,?,now(),?,?,?)";
		List<Object> paras = new ArrayList<Object>();
		paras.add(pname);
		paras.add(pprice);
		paras.add(pcid);
		paras.add(pcontent);
		paras.add(ppic);
		paras.add(phot);
		paras.add(pnew);
		paras.add(pcheap);
		return j.update(sql, paras);
	}
	
	public PageSet getProductList(int pno,int pageSize){
		String sql = "select * from taobao_product inner join taobao_category on pcid=cid order by pid desc";
		return j.queryPage(sql, null, pno, pageSize);
	}
	
	public PageSet getProductList(int pno,int pageSize,int cid){
		String sql = "select pid,pname,ppic,cname from taobao_product inner join taobao_category on pcid=cid where cid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(cid);
		return j.queryPage(sql, paras, pno, pageSize);
	}
	
	public int deleteProduction(int pid){
		String sql = "delete from taobao_product where pid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(pid);
		return j.update(sql, paras);
	}
	
	public Map<String, Object> getProduction(int pid){
		String sql = "select * from taobao_product inner join taobao_category on pcid=cid where pid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(pid);
		return j.queryOneRow(sql, paras);
	}
	
	public int updateProduction(int pid,String pname,float pprice,int pcid,String pcontent,String ppic,int phot,int pnew,int pcheap){
		String sql = "update taobao_product set pname=?,pprice=?,pcid=?,pcontent=?,ppic=?,pgd=?,plove=?,plike=? where pid=?";
		List<Object> paras = new ArrayList<Object>();
		paras.add(pname);
		paras.add(pprice);
		paras.add(pcid);
		paras.add(pcontent);
		paras.add(ppic);
		paras.add(phot);
		paras.add(pnew);
		paras.add(pcheap);
		paras.add(pid);
		return j.update(sql, paras);
	}
	
	public List<Map<String, Object>> getHomeProductList(String pType){
		String fileName = "";
		if(pType.equalsIgnoreCase("gd")){
			fileName = "pgd";
		}else if(pType.equalsIgnoreCase("love")){
			fileName = "plove";
		}else if(pType.equalsIgnoreCase("like")){
			fileName = "plike";
		}
		String sql = "select pid,ppic,pname,pprice,pcontent from taobao_product where "+fileName+"=1";
		return j.query(sql);
	}
}
