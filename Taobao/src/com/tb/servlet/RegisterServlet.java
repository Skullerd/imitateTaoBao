package com.tb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tb.bll.Register;
import com.tb.utils.JsUtils;
import com.tb.utils.HttpUtil;

public class RegisterServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RegisterServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpUtil.show(request, response, "register.jsp");
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//接收数据
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		String uname = HttpUtil.escapeHtml(request.getParameter("uname"));
		String upwd = HttpUtil.escapeHtml(request.getParameter("upwd"));
		String urepw = HttpUtil.escapeHtml(request.getParameter("urepw"));
		String uemail = HttpUtil.escapeHtml(request.getParameter("uemail"));
		String udate = HttpUtil.escapeHtml(request.getParameter("udate"));
		
		PrintWriter out = response.getWriter();
		if(uname.isEmpty()){
	   		JsUtils.jsAlertBack(out, "用户名不能为空!");
	   		return;
	   }
	   if(upwd.isEmpty()){
	   		JsUtils.jsAlertBack(out, "密码不能为空！");
	   		return;
	   }
	   if(urepw.isEmpty()){
	   		JsUtils.jsAlertBack(out, "请再次输入确认密码！");
	   		return;
	   }
	   if(uemail.isEmpty()){
	   		JsUtils.jsAlertBack(out, "邮箱不能为空！");
	   		return;
	   }
	   if(!upwd.equals(urepw)){
	   		JsUtils.jsAlertBack(out, "两次密码不一致！");
	   		return;
	   }
	   String erg="^[a-zA-Z0-9]+@[a-zA-Z0-9.]+[a-zA-Z]{2,3}$";
	   if(!uemail.matches(erg)){
	   		JsUtils.jsAlertBack(out, "Email格式不正确！");
	   		return;
	   }
	   
	   
	   Register register = new Register();
	   Object ocount = register.checknewuser(uname);
	   if(ocount!=null){
		   JsUtils.jsAlertBack(out, "该用户名已存在");
	   		return;
	   }else{
		   int result = register.adduser(uname, upwd, uemail, udate);
		   if( result>0){
		   		JsUtils.jsAlertLocation(out, "注册成功", "login");
		   			}else{
		   			JsUtils.jsAlertBack(out, "注册失败");
		   			}  
	   }
				
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
