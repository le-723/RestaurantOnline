package com.gem.book_mall.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gem.book_mall.dao.BookChartDAO;
import com.gem.book_mall.dao.impl.BookChartDAOImpl;

public class DelBuyGoodsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int Uid=Integer.valueOf(request.getParameter("uid"));
		
		BookChartDAO bookChartDAO = new BookChartDAOImpl();
		boolean flag = bookChartDAO.delBook(id);
		
		
		
		if(flag){
			request.getSession().setAttribute("msg", "删除成功");
			response.sendRedirect("BuyGoodsServlet?id="+ Uid);
		}else {
			request.getSession().setAttribute("msg1", "删除失败，请重新操作！");
			response.sendRedirect("BuyGoodsServlet?id="+Uid);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
