package com.mvc.control;

import java.io.IOException;

import java.util.*;  
import java.text.SimpleDateFormat; 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.OrderBean;
import com.mvc.dao.OrderDao;
import com.mvc.bean.UserBean;
import com.mvc.dao.UserDao;

/**
 * Servlet implementation class Orderervlet
 */
//@WebServlet("/Orderservlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderDao orderDao = null;

	public OrderServlet() {
		this.orderDao = new OrderDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println("\norder*********************action=" + action);
		if (action == null || "".equals(action)) {
			request.setAttribute("error", "您操作有误");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else if ("OrderAdd".equals(action)) {
			OrderAdd(request, response);
		} else if ("OrderQuery".equals(action)) {
			OrderQuery(request, response);
		} else if ("OrderDel".equals(action)) {
			OrderDel(request, response);
		} else if ("OrderifQuery".equals(action)) {
			OrderifQuery(request, response);
		}
	}

	

	/*********************** 添加订单信息 **************************/
	private void OrderAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserBean userbean = new UserBean();
		UserBean userbean1 = new UserBean();
		UserDao userdao = new UserDao();
		userbean.setId(Integer.valueOf(request.getParameter("uid")));
		userbean1= userdao.queryM(userbean);
		
		OrderBean orderBean= new OrderBean();
		//获取系统时间
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	    String dateString = formatter.format(new Date());  
		//Date date1 = new Date();
		//java.sql.Date date = new java.sql.Date(date1.getTime());
		orderBean.setTime(dateString);
		orderBean.setUid(Integer.parseInt(request.getParameter("uid")));
		orderBean.setCount(request.getParameter("count")==""?0:Integer.parseInt(request.getParameter("count")));
		orderBean.setPayall(Double.valueOf(request.getParameter("payall")));
		orderBean.setUname(userbean1.getUsername());
		orderBean.setUphone(userbean1.getPhone());
		orderBean.setUadress(userbean1.getAddress());
	    int a = orderDao.insert(orderBean);
	    if (a == 0) {
			request.setAttribute("error", "增加订单信息失败");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		} else if(a==2) {
			request.setAttribute("error", "该订单信息已经添加！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("buygoods.jsp?id="+orderBean.getUid()).forward(request,response);
		}
	}

	/*********************** 查询全部订单信息 **************************/
	private void OrderQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String str = null;
		request.setAttribute("order", orderDao.query(str)); // ����ѯ������浽book��
		request.getRequestDispatcher("h_order.jsp").forward(request,
				response);
	}
	/*********************** 删除订单信息**************************/
	private void OrderDel(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		OrderBean orderBean = new OrderBean();
		String str = null;
		orderBean.setOid(Integer.valueOf(request.getParameter("oid")));
		int ret = orderDao.delete(orderBean);
		if (ret == 0) {
			request.setAttribute("error", "删除订单信息失败！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		} else {
			request.setAttribute("order", orderDao.query(str));
			request.getRequestDispatcher("h_order.jsp").forward(request,response);
		}
	}
	/*********************** 条件查询订单信息 **************************/
	private void OrderifQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		OrderBean orderBean = new OrderBean();
		orderBean.setUid(Integer.valueOf(request.getParameter("id")));
		request.setAttribute("OrderifQuery",orderDao.queryM(orderBean));
		System.out.println("OK22");
		request.getRequestDispatcher("q_person_order.jsp").forward(request,
				response);
	
	}

}
