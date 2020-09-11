package com.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import com.mvc.bean.StaffGrantBean;
import com.mvc.util.ConnDB;

public class StaffGrantDao {
	
	private ConnDB conn = new ConnDB();
	// 查询数据
	public Collection query(String strif) {
		StaffGrantBean staffgrantbean=null;
		Collection staffgrantColl=new ArrayList();
		String sql = "";
		if(strif != "all" &&strif != null &&strif !="") {
			sql="select * from staff_grant where"+strif+"";
		}else {
			sql="select * from staff_grant";
		}
		ResultSet rs =conn.executeQuery(sql);
		System.out.println("查询员工权限信息时的SQL："+sql);
		try {
			while(rs.next())
			{
				staffgrantbean=new StaffGrantBean();
				staffgrantbean.setGid(Integer.valueOf(rs.getString(1)));
				staffgrantbean.setSid(Integer.valueOf(rs.getString(2)));
				staffgrantbean.setResset(Integer.valueOf(rs.getString(3)));
				staffgrantbean.setOrderset(Integer.valueOf(rs.getString(4)));
				staffgrantbean.setFoodset(Integer.valueOf(rs.getString(5)));
				staffgrantbean.setUserset(Integer.valueOf(rs.getString(6)));
				staffgrantColl.add(staffgrantbean);
			}
		} catch(SQLException ex) {
			
		}
		
		conn.close();
		return staffgrantColl;
	}
	//用于修改的查询
		public StaffGrantBean queryM(StaffGrantBean staffgrantbean) {
			StaffGrantBean staffgrantbean1 = null;
			String sql = "";
			if(staffgrantbean.getSid()!=null) {
				sql="select * from staff_grant where sid= " + staffgrantbean.getSid()+";";
			}
			System.out.println("修改员工权限信息时的SQL："+sql);
			ResultSet rs =conn.executeQuery(sql);
			try {
				while(rs.next())
				{
					staffgrantbean1=new StaffGrantBean();
					staffgrantbean1.setGid(rs.getInt(1));
					staffgrantbean1.setSid(rs.getInt(2));
					staffgrantbean1.setResset(rs.getInt(3));
					staffgrantbean1.setOrderset(rs.getInt(4));
					staffgrantbean1.setFoodset(rs.getInt(5));
					staffgrantbean1.setUserset(rs.getInt(6));
				}
			} catch(SQLException ex) {
			
			}
			conn.close();
			return staffgrantbean1;
		}
	
		// 修改数据
				public int update(StaffGrantBean staffgrantbean) {
					int flag=0;
					String sql = "";
					sql = "Update staff_grant set resset = " + staffgrantbean.getResset()
					+", orderset = " + staffgrantbean.getOrderset()
					+", foodset = " + staffgrantbean.getFoodset()
					+", userset = " + staffgrantbean.getUserset()
					+" where sid=" + staffgrantbean.getSid() + ";";
					flag = conn.executeUpdate(sql);
					System.out.println("修改数据时的SQL：" + sql);
					System.out.println(flag);
					conn.close();
					return flag;
				}
}
