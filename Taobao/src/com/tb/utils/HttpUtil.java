package com.tb.utils;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HttpUtil {
	public static int getIntPara(HttpServletRequest request,String pName,int defaultValue){
		if(request.getParameter(pName)==null){
			return defaultValue;
		}
		else{
			return Integer.parseInt(request.getParameter(pName));
		}
	}
	public static void show(HttpServletRequest request, HttpServletResponse response,String url){
		try {
			request.getRequestDispatcher(url).forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static String getStringPara(HttpServletRequest request,String pName,String defaultValue){
		return request.getParameter(pName)==null?defaultValue:request.getParameter(pName);
	}
	public static String nl2br(String str){
		String result=str.replaceAll("\\n", "<br/>");
		return result;
	}
	public static String nl2p(String str){
		str="<p>"+str+"</p>";
		String result=str.replaceAll("\\n", "<p/><p>");
		return result;
	}
	public static String escapeHtml(String str){
	       if( str == null ){
	             return null;
	       }
	       int len = str.length();
	       StringBuffer sb = new StringBuffer(len);
	       for(int i=0; i<len; i++){
	             char c = str.charAt(i);
	             switch( c ){
	                  case ' ':
	                      sb.append("&nbsp;");
	                      break;
	                  case '<':
	                      sb.append("&lt;");
	                      break;
	                  case '>':
	                      sb.append("&gt;");
	                      break;
	                  case '&':
	                      sb.append("&amp;");
	                      break;
	                  case '"':
	                      sb.append("&quot;");
	                      break;
	                  default:
	                      sb.append(c);
	             }
	       }
	       return sb.toString();
	}
}
