package com.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import com.mvc.bean.StaffBean;
import com.mvc.bean.StaffGrantBean;
import com.mvc.util.ConnDB;
import com.mysql.jdbc.Connection;

public class StaffDao {
private ConnDB conn = new ConnDB();


public StaffGrantBean authenticateUser(StaffBean loginBeanInput) {
	 
    String userNameInput = loginBeanInput.getName(); //Keeping user entered values in temporary variables.
    String passwordInput = loginBeanInput.getPwd();


    ResultSet resultSet = null;
    ResultSet rs = null;
    String userNameDB = "";
    String passwordDB = "";
    StaffGrantBean staffg=new StaffGrantBean();
    staffg.setGid(-1);
    StaffBean staffbean=null;
    try {
    	String sql="SELECT * from db_restaurant.staff";
        resultSet = conn.executeQuery(sql);
        // Until next row is present otherwise it return false
        while (resultSet.next()){
            userNameDB = resultSet.getString("name"); //fais attention c'est les valeurs du DB
            passwordDB = resultSet.getString("pwd");
            if (userNameInput.equals(userNameDB) && passwordInput.equals(passwordDB)) {
            	String sql1="SELECT * from staff_grant where sid="+ resultSet.getInt("sid");
            	rs = conn.executeQuery(sql1);
            	System.out.println("登陆Gid："+sql1);
            	while(rs.next())
				{
					staffg.setGid(rs.getInt(1));
					staffg.setSid(rs.getInt(2));
					staffg.setResset(rs.getInt(3));
					staffg.setOrderset(rs.getInt(4));
					staffg.setFoodset(rs.getInt(5));
					staffg.setUserset(rs.getInt(6));
				}
                return staffg;
            }
        }
    	} catch(SQLException ex) {
    		
    	}
    	
    conn.close();
    System.out.print("Invalid user credentials");
    return staffg;

}
	// 查询数据
public Collection query(String strif) {
	StaffBean staffbean=null;
	Collection staffColl=new ArrayList();
	String sql = "";
	if(strif != "all" &&strif != null &&strif !="") {
		sql="select * from staff where"+strif+"";
	}else {
		sql="select * from staff";
	}
	ResultSet rs =conn.executeQuery(sql);
	try {
		while(rs.next())
		{
			staffbean=new StaffBean();
			staffbean.setSid(Integer.valueOf(rs.getString(1)));
			staffbean.setName(rs.getString(2));
			staffbean.setPwd(rs.getString(3));
			staffbean.setSex(rs.getString(4));
			staffbean.setPhone(rs.getString(5));
			staffColl.add(staffbean);
		}
	} catch(SQLException ex) {
		
	}
	
	conn.close();
	return staffColl;
}
//用于修改的查询
	public StaffBean queryM(StaffBean staffbean) {
		StaffBean staffbean1 = null;
		String sql = "";
		if(staffbean.getSid()!=null) {
			sql="select * from staff where sid= " + staffbean.getSid()+";";
		}
		System.out.println("修改员工信息时的SQL："+sql);
		ResultSet rs =conn.executeQuery(sql);
		try {
			while(rs.next())
			{
				staffbean1=new StaffBean();
				staffbean1.setSid(Integer.valueOf(rs.getString(1)));
				staffbean1.setName(rs.getString(2));
				staffbean1.setPwd(rs.getString(3));
				staffbean1.setSex(rs.getString(4));
				staffbean1.setPhone(rs.getString(5));
			}
		} catch(SQLException ex) {
		
		}
		conn.close();
		return staffbean1;
	}
	// 添加数据
	public int insert(StaffBean staffbean) {
		String sql1="select * from staff where name='"+staffbean.getName()+"'";
		ResultSet rs = conn.executeQuery(sql1);
		String sql="";
		int flag=0;
		try {
			if(rs.next())
			{
				flag=2;
			}else {
				sql="insert into staff(name,pwd,sex,phone) values('"
						+ staffbean.getName()
						+ "','"
						+ staffbean.getPwd()
						+ "','"
						+ staffbean.getSex()
						+ "','"
						+ staffbean.getPhone() +"');";
				flag=conn.executeUpdate(sql);
				System.out.println("添加员工信息的SQL：" + sql);
				conn.close();
			}
		}catch(SQLException ex) {
			flag=0;
		}
		System.out.println("flag:" + flag);
		return flag;
	}
	
	
	// 修改数据
		public int update(StaffBean staffbean) {
			int flag=0;
			String sql = "";
			sql = "Update staff set name = '" + staffbean.getName()
			+"', pwd = '" + staffbean.getPwd()
			+"', sex = '" + staffbean.getSex()
			+"', phone= '" + staffbean.getPhone()
			+"' where sid=" + staffbean.getSid() + ";";
			flag = conn.executeUpdate(sql);
			System.out.println("修改数据时的SQL：" + sql);
			System.out.println(flag);
			conn.close();
			return flag;
		}
		
		// 删除数据
		public int delete(StaffBean staffbean) {
			String sql = "Delete from staff where sid=" + staffbean.getSid()
					+ "";
			int falg = conn.executeUpdate(sql);
			System.out.println("删除时的SQL：" + sql);
			return falg;
		}
	}