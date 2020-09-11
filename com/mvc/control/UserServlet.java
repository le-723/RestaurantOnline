package com.mvc.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.UserBean;
import com.mvc.dao.UserDao;
/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private UserDao userdao = null;
	
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
        this.userdao = new UserDao();
    }
    
    /*********************** 添加用户信息**************************/
	private void userAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserBean userbean = new UserBean();
		userbean.setUsername(request.getParameter("name"));
		userbean.setPwd(request.getParameter("pwd"));
		userbean.setSex(request.getParameter("sex"));
		userbean.setPhone(request.getParameter("phone"));
		userbean.setAddress(request.getParameter("adress"));
		
		
		int a = userdao.insert(userbean);
		if (a == 0) {
			request.setAttribute("error", "用户信息添加失败！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else if (a == 2) {
			request.setAttribute("error", "该用户信息已经添加！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("h_vipok.jsp?para=1").forward(
					request, response);
		}
	}

	/*********************** 查询全部用户信息 **************************/
	private void userQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String str = null;
		request.setAttribute("user",userdao.query(str));
		request.getRequestDispatcher("h_vip.jsp").forward(request, response);
	}
	

	
	/*********************** 修改查询用户信息 **************************/
	private void userModifyQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserBean userbean = new UserBean();
		System.out.println("查询修改用户信息：" + request.getParameter("UID"));
		userbean.setId(Integer.valueOf(request.getParameter("UID")));
		request.setAttribute("userQueryif", userdao.queryM(userbean));
		request.getRequestDispatcher("h_vipupdate.jsp").forward(request,
				response);
	}
	/*********************** 修改查询地址用户信息 **************************/
	private void userMQ(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserBean userbean = new UserBean();
		System.out.println("查询修改用户信息：" + request.getParameter("id"));
		userbean.setId(Integer.valueOf(request.getParameter("id")));
		request.setAttribute("userQ", userdao.queryM(userbean));
		
		request.getRequestDispatcher("address.jsp?id="+userbean.getId()).forward(request,
				response);
	}
	/*********************** 查询读者详细信息 **************************/
	private void userDetail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserBean userbean = new UserBean();
		userbean.setId(Integer.valueOf(request.getParameter("id")));
		request.setAttribute("userDetail", userdao.queryM(userbean));
		request.getRequestDispatcher("q_person_Modify.jsp").forward(request,
				response);
	}

	/*********************** 修改用户信息 **************************/
	private void userModify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserBean userbean = new UserBean();
		
		userbean.setUsername(request.getParameter("name"));
		userbean.setPwd(request.getParameter("pwd"));
		userbean.setSex(request.getParameter("sex"));
		userbean.setPhone(request.getParameter("phone"));
		userbean.setAddress(request.getParameter("adress"));
		userbean.setId(Integer.parseInt(request.getParameter("id")));
		int ret = userdao.update(userbean);
		if (ret == 0) {
			request.setAttribute("error", "修改用户信息失败！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("h_vipok.jsp?para=2").forward(
					request, response);
		}
	}
	/*********************** 修改用户地址信息 **************************/
	private void userM(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserBean userbean = new UserBean();
		
		userbean.setUsername(request.getParameter("add_name"));
		userbean.setPhone(request.getParameter("add_phone"));
		userbean.setAddress(request.getParameter("add_address"));
		userbean.setId(Integer.parseInt(request.getParameter("id")));
		int ret = userdao.updatead(userbean);
		if (ret == 0) {
			request.setAttribute("error", "修改用户信息失败！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("buygoods.jsp?id="+userbean.getId()).forward(
					request, response);
		}
	}
	/*********************** 删除读者信息 **************************/
	private void userDel(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		UserBean userbean = new UserBean();
		userbean.setId(Integer.valueOf(request.getParameter("UID")));
		int ret = userdao.delete(userbean);
		if (ret == 0) {
			request.setAttribute("error", "删除用户信息失败！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("h_vipok.jsp?para=3").forward(
					request, response);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String action = request.getParameter("action");
		System.out.println("\nuser***********action="+action);
		if(action==null||"".equals(action)) {
			request.setAttribute("error","您的操作有误！");
			request.getRequestDispatcher("error.jsp");
		}else if("userAdd".equals(action)) {
			userAdd(request,response);
		}else if ("userQuery".equals(action)) {
			userQuery(request, response);
		} else if ("userModifyQuery".equals(action)) {
			userModifyQuery(request, response);
		} else if ("userModify".equals(action)) {
			userModify(request, response);
		} else if ("userDel".equals(action)) {
			userDel(request, response);
		} else if ("userDetail".equals(action)) {
			userDetail(request, response);
		}else if ("userMQ".equals(action)) {
			userMQ(request, response);
		}else if ("userM".equals(action)) {
			userM(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
