package com.tb.utils;

public class BaseBll {
	protected JdbcUtils j;
	public BaseBll(){
		j = new JdbcUtils();
	}
}
