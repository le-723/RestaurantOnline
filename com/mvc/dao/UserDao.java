package com.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import com.mvc.bean.UserBean;
import com.mvc.util.ConnDB;

public class UserDao {
private ConnDB conn = new ConnDB();
	// 查询数据
public Collection query(String strif) {
	UserBean userbean=null;
	Collection userColl=new ArrayList();
	String sql = "";
	if(strif != "all" &&strif != null &&strif !="") {
		sql="select * from b_user where"+strif+"";
	}else {
		sql="select * from b_user";
	}
	ResultSet rs =conn.executeQuery(sql);
	try {
		while(rs.next())
		{
			userbean=new UserBean();
			userbean.setId(Integer.valueOf(rs.getString(1)));
			userbean.setUsername(rs.getString(2));
			userbean.setPwd(rs.getString(3));
			userbean.setSex(rs.getString(4));
			userbean.setPhone(rs.getString(5));
			userbean.setAddress(rs.getString(6));
			userColl.add(userbean);
		}
	} catch(SQLException ex) {
		
	}
	conn.close();
	return userColl;
}
//用于修改的查询
	public UserBean queryM(UserBean userbean) {
		UserBean userbean1=null;
		String sql = "";
		if(userbean.getId()!=null) {
			sql="select * from b_user where id= "+userbean.getId()+"";
		}
		System.out.println("修改读者信息时的SQL："+sql);
		ResultSet rs =conn.executeQuery(sql);
		try {
			while(rs.next())
			{
				userbean1=new UserBean();
				userbean1.setId(Integer.valueOf(rs.getString(1)));
				userbean1.setUsername(rs.getString(2));
				userbean1.setPwd(rs.getString(3));
				userbean1.setSex(rs.getString(4));
				userbean1.setPhone(rs.getString(5));
				userbean1.setAddress(rs.getString(6));
				System.out.println(rs.getString(2));
				
			}
		} catch(SQLException ex) {
		
		}
		conn.close();
		return userbean1;
	}
	
	// 添加数据
	public int insert(UserBean userbean) {
		String sql1="select * from b_user where username='"+userbean.getUsername()+"'";
		ResultSet rs = conn.executeQuery(sql1);
		String sql="";
		int flag=0;
		try {
			if(rs.next())
			{
				flag=2;
			}else {
				sql="insert into b_user(username,pwd,sex,phone,address) values('"
						+ userbean.getUsername()
						+ "','"
						+ userbean.getPwd() 
						+ "','"
						+ userbean.getSex()
						+ "','"
						+ userbean.getPhone()
						+ "','"
						+ userbean.getAddress() + "');";
				flag=conn.executeUpdate(sql);
				System.out.println("添加读者信息的SQL：" + sql);
				conn.close();
			}
		}catch(SQLException ex) {
			flag=0;
		}
		System.out.println("flag:" + flag);
		return flag;
	}
	
	
	// 修改数据
		public int update(UserBean userbean) {
			int flag=0;
			String sql = "";
			sql = "Update b_user set username = '" + userbean.getUsername()
			+"', pwd = '" + userbean.getPwd()
			+"', sex = '" + userbean.getSex()
			+"', phone= '" + userbean.getPhone()
			+"', address= '" + userbean.getAddress()
			+"' where id = " + userbean.getId();
			flag = conn.executeUpdate(sql);
			System.out.println("修改数据时的SQL：" + sql);
			conn.close();
			return flag;
		}

		// 修改地址数据
			public int updatead(UserBean userbean) {
				int flag=0;
				String sql = "";
				sql = "Update b_user set username = '" + userbean.getUsername()
				+"', phone= '" + userbean.getPhone()
				+"', address= '" + userbean.getAddress()
				+"' where id = " + userbean.getId();
				flag = conn.executeUpdate(sql);
				System.out.println("修改地址数据时的SQL：" + sql);
				conn.close();
				return flag;
			}
		// 删除数据
		public int delete(UserBean userbean) {
			String sql = "Delete from b_user where id=" + userbean.getId()
					+ "";
			int falg = conn.executeUpdate(sql);
			System.out.println("删除时的SQL：" + sql);
			return falg;
		}
	}

