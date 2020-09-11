package com.mvc.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.bean.StaffGrantBean;
import com.mvc.dao.StaffGrantDao;

/**
 * Servlet implementation class StaffGrantServlet
 */
@WebServlet("/StaffGrantServlet")
public class StaffGrantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StaffGrantDao staffgrantdao = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffGrantServlet() {
        super();
        this.staffgrantdao = new StaffGrantDao();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getParameter("action");
		System.out.println("\nstaffgrant***********action="+action);
		if(action==null||"".equals(action)) {
			request.setAttribute("error","您的操作有误！");
			request.getRequestDispatcher("error.jsp");
		} else if ("staffgrantQuery".equals(action)) {
			staffgrantQuery(request, response);
		}else if ("staffgrantModifyQuery".equals(action)) {
			staffgrantModifyQuery(request, response);
		}else if ("staffgrantModify".equals(action)) {
			staffgrantModify(request, response);
		}else if ("staffgrantMQ".equals(action)) {
			staffgrantMQ(request, response);
		}
	}
	/*********************** 查询员工权限信息 **************************/
	private void staffgrantQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String str = null;
		request.setAttribute("staffgrantQuery",staffgrantdao.query(str));
		request.getRequestDispatcher("h_staffpower.jsp").forward(request, response);
	}
	/*********************** 修改查询用户权限信息 **************************/
	private void staffgrantModifyQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		StaffGrantBean staffgrantbean = new StaffGrantBean();
		staffgrantbean.setSid(Integer.parseInt(request.getParameter("id")));
		System.out.println("查询修改员工权限信息：" + staffgrantbean.getSid());
		request.setAttribute("staffgrantQueryif", staffgrantdao.queryM(staffgrantbean));
		request.getRequestDispatcher("h_staffpowerupdate.jsp").forward(request,
				response);
	}
	/*********************** 查询用户权限信息 **************************/
	private void staffgrantMQ(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		StaffGrantBean staffgrantbean = new StaffGrantBean();
		staffgrantbean.setSid(Integer.parseInt(request.getParameter("id")));
		System.out.println("查询修改员工权限信息：" + staffgrantbean.getSid());
		request.setAttribute("staffg", staffgrantdao.queryM(staffgrantbean));
		request.getRequestDispatcher("h_leftcontent.jsp").forward(request,
				response);
	}
	/*********************** 修改用户权限信息 **************************/
	private void staffgrantModify(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		StaffGrantBean staffgrantbean = new StaffGrantBean();
		System.out.println("修改权限员工编号：" + request.getParameter("id"));
		staffgrantbean.setSid(Integer.parseInt(request.getParameter("id")));
		staffgrantbean.setResset(request.getParameter("resset") == null ? 0
				:Integer.parseInt(request.getParameter("resset")));
		staffgrantbean.setOrderset(request.getParameter("orderset") == null ? 0
				:Integer.parseInt(request.getParameter("orderset")));
		staffgrantbean.setFoodset(request.getParameter("foodset") == null ? 0
				:Integer.parseInt(request.getParameter("foodset")));
		staffgrantbean.setUserset(request.getParameter("userset") == null ? 0
				:Integer.parseInt(request.getParameter("userset")));
		
		int ret = staffgrantdao.update(staffgrantbean);
		if (ret == 0) {
			request.setAttribute("error", "修改员工权限信息失败！");
			request.getRequestDispatcher("error.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("h_staffpowerok.jsp?para=2").forward(
					request, response);
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