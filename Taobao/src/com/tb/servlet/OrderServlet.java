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
import com.tb.utils.HttpUtil;
import com.tb.utils.JsUtils;

public class OrderServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OrderServlet() {
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
	    if(request.getSession().getAttribute("sUser")==null){
	    	JsUtils.jsAlertLocation(out, "���¼", "login");
	    	return;
	    }
	    Map<String, Object> sUser = (Map<String, Object>) request.getSession().getAttribute("sUser");
	    int uid = Integer.valueOf(sUser.get("uid").toString());	   
	    Orders orders = new Orders();
	    Cart cart = new Cart();
	    double sum_total = orders.getTotal(uid);
	    request.setAttribute("total", sum_total);
	    request.setAttribute("cartlist", cart.getCartList(uid));
	    request.setAttribute("cartcuid", cart.getCartcuid(uid));
	    HttpUtil.show(request, response, "order.jsp");
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
		response.setContentType("text/html; charset=utf-8");
	    request.setCharacterEncoding("UTF-8");
	    PrintWriter out = response.getWriter();
	    String oname = request.getParameter("oname");
	    String otel = request.getParameter("otel");
	    String oaddress = request.getParameter("oaddress");
	    if(oname.isEmpty()){
	    	JsUtils.jsAlertBack(out, "���ֲ���Ϊ��");
	    	return;
	    }
	    if(otel.isEmpty()||otel.length()<11){
	    	JsUtils.jsAlertBack(out, "�绰����Ϊ�ջ�绰��ʽ����ȷ");
	    	return;
	    }
	    
	    if(oaddress.isEmpty()){
	    	JsUtils.jsAlertBack(out, "��ַ����Ϊ��");
	    	return;
	    }
	    
	    if(request.getSession().getAttribute("sUser")==null){
	    	JsUtils.jsAlertLocation(out, "���¼", "login");
	    	return;
	    }
	    Map<String, Object> sUser = (Map<String, Object>) request.getSession().getAttribute("sUser");
	    int uid = Integer.valueOf(sUser.get("uid").toString());	    
	    Orders orders = new Orders();
	    int oid = orders.add(oname, otel, oaddress, uid);
	    if(oid>0){
	    	JsUtils.jsAlertLocation(out, "�µ��ɹ��������ţ�"+oid, "successorder");
	    }else{
	    	JsUtils.jsAlertBack(out, "�µ�ʧ��");
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
