package com.gem.book_mall.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gem.book_mall.dao.BookChartDAO;
import com.gem.book_mall.dao.impl.BookChartDAOImpl;
import com.gem.book_mall.pojo.BookChart;

import java.sql.Date;
import java.sql.Timestamp;

public class SumServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BookChartDAO bookChartDAO = new BookChartDAOImpl();
		int Uid=Integer.valueOf(request.getParameter("id"));
		List<BookChart> list = bookChartDAO.getAllBuy();
		System.out.println("查询修改用户信息：" + request.getParameter("id"));
		
		int count=list.size();
		int sum=0;
		if(list!=null){
			for(int i=0;i<list.size();i++){
				sum+=list.get(i).getNew_price();
			}
			System.out.println("try" + count+"try"+sum);
			
			//response.sendRedirect("orderServlet?action=OrderAdd&uid="+Uid+"&count="+count+"&payall="+sum);
			request.getRequestDispatcher("/orderServlet?action=OrderAdd&uid="+Uid+"&count="+count+"&payall="+sum).forward(request,response);
			
			request.getSession().setAttribute("sum", sum);
			request.getRequestDispatcher("buygoods.jsp?id="+ Uid).forward(request,response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
