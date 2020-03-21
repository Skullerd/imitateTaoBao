package com.tb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tb.bll.Cart;
import com.tb.bll.Orders;
import com.tb.utils.JsUtils;
import com.tb.utils.HttpUtil;

public class ShowCartServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ShowCartServlet() {
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
		response.setContentType("text/html; charset=utf-8");
	    request.setCharacterEncoding("UTF-8");
	    PrintWriter out = response.getWriter();
	    int pid = HttpUtil.getIntPara(request, "pid", 0);
	    int num = 1;
	    if(request.getSession().getAttribute("sUser")==null){
	    	JsUtils.jsAlertLocation(out, "���¼", "login");
	    	return;
	    }
	    Map<String, Object> sUser = (Map<String, Object>) request.getSession().getAttribute("sUser");
	    int uid = Integer.valueOf(sUser.get("uid").toString());	  
	    Cart cart = new Cart();
	    if(cart.getCartcuid(uid).size()>0){
	    	Orders orders = new Orders();
	    	double sum_total = orders.getTotal(uid);
	    	request.setAttribute("cartlist", cart.getCartList(uid));
		    request.setAttribute("cartcuid", cart.getCartcuid(uid));
		    request.setAttribute("total", sum_total);
		    HttpUtil.show(request, response, "cart.jsp");
	    }else{
	    	JsUtils.jsAlertLocation(out, "���ȹ���", "index");
	    }
		
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

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
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
