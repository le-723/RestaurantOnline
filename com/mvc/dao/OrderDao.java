package com.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import com.mvc.bean.OrderBean;
import com.mvc.util.ConnDB;

public class OrderDao {
	private ConnDB conn = new ConnDB();

	// 查询数据
	public Collection query(String strif) {
		OrderBean orderBean = null;
		Collection orderColl = new ArrayList();
		String sql = "";
		if (strif != "all" && strif != null && strif != "") {
			sql =  "select oid,uid,time,Uname,Uadress,Uphone,count,payall from orders";
		} else {
			sql = "select oid,uid,time,Uname,Uadress,Uphone,count,payall from orders";
		}
		System.out.println("查询时的sql语句"+sql);
		ResultSet rs = conn.executeQuery(sql);
		String time="";
		try {
			while (rs.next()) {
				orderBean = new OrderBean();
				orderBean.setOid(Integer.valueOf(rs.getString(1)));
				orderBean.setUid(Integer.valueOf(rs.getString(2)));
				time=rs.getString(3);
				orderBean.setTime(time==null?"":time);
				orderBean.setUname(rs.getString(4));
				orderBean.setUadress(rs.getString(5));
				orderBean.setUphone(rs.getString(6));
				orderBean.setCount(rs.getInt(7));
				orderBean.setPayall(rs.getDouble(8));
				orderColl.add(orderBean);
			}
		} catch (SQLException ex) {
		}
		conn.close();
		return orderColl;
	}

	// 用于修改的查询
       public Collection queryM(OrderBean orderBean) {
		OrderBean orderBean1 = null;
		Collection orderColl1 = new ArrayList();
		String sql = "";
		if (orderBean.getUid() != null) {
			sql = "select oid,time,Uname,Uadress,Uphone,Fname,count,payall from orders "
					+"where uid="
					+ orderBean.getUid() + "";
		} 
		System.out.println("查询时的SQL语句" + sql);
		ResultSet rs = conn.executeQuery(sql);
		String time="";
		try {
			while (rs.next()) {
				orderBean1 = new OrderBean();
				orderBean1.setOid(Integer.valueOf(rs.getString(1)));
				time=rs.getString(2);
				orderBean1.setTime(time==null?"":time);
				orderBean1.setUname(rs.getString(3));
				orderBean1.setUadress(rs.getString(4));
				orderBean1.setUphone(rs.getString(5));
				orderBean1.setFname(rs.getString(6));
				orderBean1.setCount(rs.getInt(7));
				orderBean1.setPayall(rs.getDouble(8));
				orderColl1.add(orderBean1);
				System.out.println("OK");
			}
		} catch (SQLException ex) {
		}
		conn.close();
		return orderColl1;
	}

	// 添加数据
	public int insert(OrderBean orderBean) {
		
		String sql = "";
		int falg = 0;
		sql = "Insert into orders (time,uid,count,payall,Uname,Uphone,Uadress) values('"
							+ orderBean.getTime()
							+ "',"
							+ orderBean.getUid()
							+ ","
							+ orderBean.getCount()
							+ ","
							+ orderBean.getPayall()
							+ ",'"
							+ orderBean.getUname()
							+ "','"
							+ orderBean.getUphone()
							+ "','"
							+ orderBean.getUadress()
							+  "')";
				
		falg = conn.executeUpdate(sql);
		System.out.println("添加订单时的SQL" + sql);
		conn.close();
		System.out.println("flag:" + falg);
		return falg;
	}

	// 修改数据
	/*public int update(ReaderForm readerForm) {
		String sql = "";
		if (readerForm.getBirthday() == "") {
			sql = "Update tb_reader set sex='" + readerForm.getSex()
					+ "',barcode='" + readerForm.getBarcode() + "',vocation='"
					+ readerForm.getVocation() + "',birthday=null,paperType='"
					+ readerForm.getPaperType() + "',paperNO='"
					+ readerForm.getPaperNO() + "',tel='" + readerForm.getTel()
					+ "',email='" + readerForm.getEmail() + "',remark='"
					+ readerForm.getRemark() + "',typeid="
					+ readerForm.getTypeid() + " where id="
					+ readerForm.getId() + "";
		} else {
			sql = "Update tb_reader set sex='" + readerForm.getSex()
					+ "',barcode='" + readerForm.getBarcode() + "',vocation='"
					+ readerForm.getVocation() + "',birthday='"
					+ readerForm.getBirthday() + "',paperType='"
					+ readerForm.getPaperType() + "',paperNO='"
					+ readerForm.getPaperNO() + "',tel='" + readerForm.getTel()
					+ "',email='" + readerForm.getEmail() + "',remark='"
					+ readerForm.getRemark() + "',typeid="
					+ readerForm.getTypeid() + " where id="
					+ readerForm.getId() + "";
		}
		int falg = conn.executeUpdate(sql);
		System.out.println("�޸�����ʱ��SQL��" + sql);
		conn.close();
		return falg;
	}*/

	// 删除数据
	public int delete(OrderBean orderBean) {
		String sql = "Delete from orders where oid=" + orderBean.getOid()
				+ "";
		int falg = conn.executeUpdate(sql);
		System.out.println("删除时的SQL" + sql);
		conn.close();
		return falg;
	}
}
