package com.tb.adminbll;

import java.util.List;
import java.util.Map;

import com.tb.utils.BaseBll;

public class Category extends BaseBll{
	public List<Map<String, Object>> getcategoryList(){
		String sql = "select * from taobao_category";
		return j.query(sql);
	}
}
