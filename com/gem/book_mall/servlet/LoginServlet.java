package com.gem.book_mall.servlet;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mvc.util.ConnDB;
import com.mysql.jdbc.Connection;


import java.io.IOException;
import java.net.HttpCookie;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gem.book_mall.dao.UserDAO;
import com.gem.book_mall.dao.impl.UserDAOImpl;
import com.gem.book_mall.pojo.User;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("uname");//得到名字
		String pwd = request.getParameter("pwd");//得到密码
		
		
		
		UserDAO userDAO = new UserDAOImpl();//点用Dao类
		User user = userDAO.getUser(username, pwd);//
		if (user != null && !user.equals("")) {
			request.getSession().setAttribute("user", user);
			// 创建一个cookie，存放制定值
			Cookie nameCookie = new Cookie("username", URLEncoder.encode(username, "utf-8"));
			Cookie pwdCookie = new Cookie("pwd", URLEncoder.encode(pwd, "utf-8"));
			
			// 设置Cookie的有效路径（制定当前目录）
			nameCookie.setPath(request.getContextPath() + "/");
			pwdCookie.setPath(request.getContextPath() + "/");
			
			// 获取页面复选框的值(用作判断)
			String rememberMe = request.getParameter("rememberMe");
			
			// 这是选中的情况， 设置Cookie的有效时间（1天）
			if (rememberMe != null && rememberMe.equals("1")) {
				nameCookie.setMaxAge(24 * 60 * 60);
				pwdCookie.setMaxAge(24 * 60 * 60);
			}

			// 这是没有选中的情况
			else {
				nameCookie.setMaxAge(0);
				pwdCookie.setMaxAge(0);
			}
			java.sql.Connection con = null;
	        Statement statement = null;
	        ResultSet resultSet = null;
	        String userNameDB = "";
	        String passwordDB = "";
			 int id=-1;
		        try {
		        	  con = ConnDB.getConnection(); //establishing connection
		  	        statement = con.createStatement(); //Statement is used to write queries.
		  	        resultSet = statement.executeQuery("SELECT id,username,pwd from b_user ");
		            // Until next row is present otherwise it return false
		            while (resultSet.next()){
		            	  userNameDB = resultSet.getString("username"); //fais attention c'est les valeurs du DB
			                passwordDB = resultSet.getString("pwd");
			 
			                if (username.equals(userNameDB) && pwd.equals(passwordDB)) {
			                	 id = resultSet.getInt("id"); 
			            }
		            }
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
			
			//将Cookie存放到response中
			response.addCookie(nameCookie);
			response.addCookie(pwdCookie);
            
			response.sendRedirect("index.jsp?id="+id);
			
		} else {
			// 保存账号密码匹配错误信息
			request.getSession().setAttribute("msg", "你的账号或密码错误，请重新登录！");
			response.sendRedirect("login.jsp");
		}
	}

}
