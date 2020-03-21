package com.tb.adminservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tb.utils.JsUtils;
import com.tb.utils.UploadUtil;
import com.tb.adminbll.Category;
import com.tb.adminbll.Product;
import com.tb.utils.HttpUtil;

public class ProductionModifyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ProductionModifyServlet() {
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

		int pid = HttpUtil.getIntPara(request, "pid", 0);
		Product product = new Product();
		Category category = new Category();
		request.setAttribute("product", product.getProduction(pid));
		request.setAttribute("catelist", category.getcategoryList());
		HttpUtil.show(request, response, "../admin/productionmodify.jsp");
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
	    UploadUtil uploadUtil = new UploadUtil(getServletContext(), request);
	    String pname = uploadUtil.getParameter("pname");
	    Float pprice = Float.valueOf(uploadUtil.getParameter("pprice"));
	    int pcid = Integer.valueOf(uploadUtil.getParameter("pcid"));
	    String pcontent = uploadUtil.getParameter("pcontent");
	    int pgd = uploadUtil.getParameter("pgd")==null?0:1;
	    int plove = uploadUtil.getParameter("plove")==null?0:1;
	    int plike = uploadUtil.getParameter("plike")==null?0:1;
	    
	    if(pname.isEmpty()){
	    	JsUtils.jsAlertBack(out, "商品名不能为空！");
	    	return;
	    }
	    if(pprice<=0){
	    	JsUtils.jsAlertBack(out, "价格不对！");
	    	return;
	    }
	    if(pcid<=0){
	    	JsUtils.jsAlertBack(out, "请选择品牌！");
	    	return;
	    }
	    if(pcontent.isEmpty()){
	    	JsUtils.jsAlertBack(out, "简介不能为空！");
	    	return;
	    }
	    String ppic = uploadUtil.getParameter("ppic");
	    int pid = Integer.valueOf(uploadUtil.getParameter("pid"));
	    List<String> path = null;
	    try{
	    	path=uploadUtil.upload();
	    }catch (Exception e) {
			// TODO: handle exception
	    	e.printStackTrace();
		}
	    if(path.size()>0){
	    	uploadUtil.deleteFile(ppic);
	    	ppic=path.get(0);
	    }
	    Product pro = new Product();
	    int result=pro.updateProduction(pid, pname, pprice, pcid, pcontent, ppic, pgd, plove, plike);
	    if(result>0){
	    	JsUtils.jsAlertLocation(out, "修改成功！", "productionlist");
	    }else{
	    	JsUtils.jsAlertBack(out, "修改失败！");
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
