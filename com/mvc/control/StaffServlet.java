package com.mvc.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.StaffBean;
import com.mvc.dao.StaffDao;
/**
 * Servlet implementation class StaffServlet
 */
@WebServlet("/StaffServlet")
public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
	private StaffDao staffdao = null;
	
	public StaffServlet() {
        super();
        // TODO Auto-generated constructor stub
        this.staffdao = new StaffDao();
        
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getParameter("action");
		System.out.println("\nstaff***********action="+action);
		if(action==null||"".equals(action)) {
			request.setAttribute("error","您的操作有误！");
			request.getRequestDispatcher("error.jsp");
		}else if("staffAdd".equals(action)) {
			staffAdd(request,response);
		}else if ("staffQuery".equals(action)) {
			staffQuery(request, response);
		} else if ("staffModifyQuery".equals(action)) {
			staffModifyQuery(request, response);
		} else if ("staffModify".equals(action)) {
			staffModify(request, response);
		} else if ("staffDel".equals(action)) {
			staffDel(request, response);
		} 
	
	}
	
	/*********************** 添加用户信息**************************/
	private void staffAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		StaffBean staffbean = new StaffBean();
		staffbean.setName(request.getParameter("name"));
		staffbean.setPwd(request.getParameter("pwd"));
		staffbean.setSex(request.getParameter("sex"));
		staffbean.setPhone(request.getParameter("phone"));
		
		int a = staffdao.insert(staffbean);
		if (a == 0) {
			request.setAttribute("error", "员工信息添加失败！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else if (a == 2) {
			request.setAttribute("error", "该员工信息已经添加！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("h_staffok.jsp?para=1").forward(
					request, response);
		}
	}

	/*********************** 查询全部用户信息 **************************/
	private void staffQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String str = null;
		request.setAttribute("staff",staffdao.query(str));
		request.getRequestDispatcher("h_staff.jsp").forward(request, response);
	}
	

	
	/*********************** 修改查询用户信息 **************************/
	private void staffModifyQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		StaffBean staffbean = new StaffBean();
		System.out.println("查询修改用户信息：" + request.getParameter("ID"));
		staffbean.setSid(Integer.valueOf(request.getParameter("ID")));
		request.setAttribute("staffQueryif", staffdao.queryM(staffbean));
		request.getRequestDispatcher("h_staffupdate.jsp").forward(request,
				response);
	}
	/*********************** 查询员工详细信息 
	private void staffDetail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		StaffBean staffbean = new StaffBean();
		staffbean.setSid(Integer.valueOf(request.getParameter("SID")));
		request.setAttribute("staffDetail", staffdao.queryM(staffbean));
		request.getRequestDispatcher("q_person_order.jsp").forward(request,
				response);
	}**************************/

	/*********************** 修改用户信息 **************************/
	private void staffModify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		StaffBean staffbean = new StaffBean();
		
		staffbean.setSid(Integer.parseInt(request.getParameter("id")));
		staffbean.setName(request.getParameter("name"));
		staffbean.setPwd(request.getParameter("pwd"));
		staffbean.setSex(request.getParameter("sex"));
		staffbean.setPhone(request.getParameter("phone"));
		
		int ret = staffdao.update(staffbean);
		if (ret == 0) {
			request.setAttribute("error", "修改用户信息失败！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("h_staffok.jsp?para=2").forward(
					request, response);
		}
	}

	/*********************** 删除员工信息 **************************/
	private void staffDel(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		StaffBean staffbean = new StaffBean();
		staffbean.setSid(Integer.valueOf(request.getParameter("ID")));
		int ret = staffdao.delete(staffbean);
		if (ret == 0) {
			request.setAttribute("error", "删除用户信息失败！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("h_staffok.jsp?para=3").forward(
					request, response);
		}
	}
	
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
