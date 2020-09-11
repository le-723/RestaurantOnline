package com.mvc.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.FoodDao;
import com.mvc.bean.FoodBean;


/**
 * Servlet implementation class FoodServlet
 */
@WebServlet(name = "FoodServlet1", urlPatterns = { "/FoodServlet1" })
public class FoodServlet extends HttpServlet {
 private FoodDao foodDao=null;
 public FoodServlet() {
	this.foodDao=new FoodDao();
 }
 public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println("\nbook*********************action=" + action);
		if (action == null || "".equals(action)) {
			request.setAttribute("error", "您的操作有误");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else if ("foodAdd".equals(action)) {
			foodAdd(request, response);
		}  else if ("foodModifyQuery".equals(action)) {
			foodModifyQuery(request, response);
		} else if ("foodModify".equals(action)) {
			foodModify(request, response);
		} else if ("foodDel".equals(action)) {
			foodDel(request, response);
		} else if ("fooddrink".equals(action)) {
			fooddrink(request, response);
		} else if ("foodnew".equals(action)) {
			foodnew(request, response);
		}else if ("foodnoodles".equals(action)) {
			foodnoodles(request, response);
		}else if ("foodspecial".equals(action)) {
			foodspecial(request, response);
		}
	}

	/*********************** 添加食品信息***************************/
	private void foodAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		FoodBean foodbean = new FoodBean();
		
		 foodbean.setB_name(request.getParameter("b_name"));
		 foodbean.setNew_price(Integer.parseInt(request.getParameter("new_price")));
		 foodbean.setOld_price(Integer.parseInt(request.getParameter("old_price")));
			 foodbean.setAuthor(request.getParameter("author"));

			 foodbean.setDetail(request.getParameter("detail"));

			 foodbean.setB_id(Integer.parseInt(request.getParameter("b_id")));

		System.out.println("OK");
		
		int a = foodDao.insert(foodbean);
		System.out.println("OK22");
		if (a == 1) {
			request.getRequestDispatcher("h_foodok.jsp?para=1").forward(request, response);
		} else if (a == 2) {
			request.setAttribute("error","该食品信息已添加");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.setAttribute("error", "食品信息添加失败");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		}
	}

	/*********************** 查询饮料信息 **************************/
	private void fooddrink(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String str = null;
		request.setAttribute("fooddrink", foodDao.query(str)); 
			request.getRequestDispatcher("h_fooddrink.jsp").forward(request, response);
		
	}
	/*********************** 查询今日新品**************************/
	private void foodnew(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String str = null;
		request.setAttribute("foodnew", foodDao.query(str)); 
			request.getRequestDispatcher("h_foodnew.jsp").forward(request, response);
	}
	
	/**********查询面条信息****************************/
   private void foodnoodles(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
	String str = null;
	request.setAttribute("foodnoodles", foodDao.query(str)); 
	request.getRequestDispatcher("h_foodnoodles.jsp").forward(request,response);}
	/********************查询特色菜信息**************/
	private void foodspecial(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String str = null;
		request.setAttribute("foodspecial", foodDao.query(str)); 
		request.getRequestDispatcher("h_foodspecial.jsp").forward(request, response);}
		
	/*********************** 查询修改食物信息 **************************/
	private void foodModifyQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	   FoodBean foodbean = new FoodBean();
		System.out.println("查询修改食物信息" + request.getParameter("id"));
		foodbean.setId(Integer.valueOf(request.getParameter("id")));
		request.setAttribute("foodmodifyquery", foodDao.queryM(foodbean));
		request.getRequestDispatcher("h_foodupdate.jsp").forward(request,
				response);
	}
	


	/*********************** 修改信息**************************/
	private void foodModify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		 FoodBean foodbean = new FoodBean();		
		 foodbean.setId(Integer.parseInt(request.getParameter("id")));
		 foodbean.setB_name(request.getParameter("b_name"));
		 foodbean.setNew_price(Integer.parseInt(request.getParameter("new_price")));
		 foodbean.setOld_price(Integer.parseInt(request.getParameter("old_price")));
			 foodbean.setAuthor(request.getParameter("author"));

			 foodbean.setDetail(request.getParameter("detail"));

			 foodbean.setB_id(Integer.parseInt(request.getParameter("b_id")));

		int ret = foodDao.update(foodbean); 
		if (ret == 0) {
			request.setAttribute("error", "修改食物信息失败");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("h_foodok.jsp?para=2").forward(request,
					response); 
		}
	}
	
	/*********************** 删除食物信息 **************************/
	private void foodDel(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		 FoodBean foodbean = new FoodBean();		
		 foodbean.setId(Integer.parseInt(request.getParameter("id")));
		int ret = foodDao.delete(foodbean);
		if (ret == 0) {
			request.setAttribute("error", "删除食物信息失败");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("h_foodok.jsp?para=3").forward(request,
					response);
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}
	
}
