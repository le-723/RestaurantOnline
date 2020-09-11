package com.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;


import com.mvc.bean.FoodBean;
import com.mvc.util.ConnDB;

public class FoodDao {
	private ConnDB conn=new ConnDB();
	public Collection query(String strif){
	FoodBean foodbean=null;
	Collection foodColl=new ArrayList();
	String sql="";
	if(strif!="all" && strif!=null && strif!=""){
	    sql="select * from b_message where type="+strif+"'";
	}else{
	    sql="select * from b_message";
	}
	System.out.println("食物查询时的SQL"+sql);
	ResultSet rs=conn.executeQuery(sql);
	try {
	    while (rs.next()) {
	         foodbean=new FoodBean();
	        foodbean.setId(rs.getInt(1));
	        foodbean.setB_name(rs.getString(2));
	        foodbean.setNew_price(rs.getInt(3));  
	        foodbean.setOld_price(rs.getInt(4)); 
	        foodbean.setAuthor(rs.getString(5));
	        foodbean.setDetail(rs.getString(6));
	        foodbean.setB_id(rs.getInt(7));

	        foodColl.add(foodbean);
	    }
	} catch (SQLException ex) {
		ex.printStackTrace();
	}
	conn.close();
	return foodColl;
	}
//用于修改的查询
	public FoodBean queryM(FoodBean foodbean){
	FoodBean foodbean1=null;
	String sql="select *from b_message where id="+foodbean.getId()+"";
	System.out.println("修改时的SQL"+sql);
	ResultSet rs=conn.executeQuery(sql);
	try {
	    while (rs.next()) {
	    	   foodbean1=new FoodBean();
		        foodbean1.setId(rs.getInt(1));
		        foodbean1.setB_name(rs.getString(2));
		        foodbean1.setNew_price(rs.getInt(3));  
		        foodbean1.setOld_price(rs.getInt(4)); 
		        foodbean1.setAuthor(rs.getString(5));
		        foodbean1.setDetail(rs.getString(6));
		        foodbean1.setB_id(rs.getInt(7));
	    }
	} catch (SQLException ex) {
	}
	
	conn.close();
	return foodbean1;
	}

	//添加数据
	public int insert(FoodBean foodbean){
		
	String sql1="select * from b_message where b_name='"+foodbean.getB_name()+"'";
	ResultSet rs = conn.executeQuery(sql1);
	String sql = "";
	int falg = 0;
	try {
	if (rs.next()) {
	    falg = 2;
	} else {
	    sql ="Insert into b_message(b_name,new_price,old_price,author,detail,b_id) values('"+foodbean.getB_name()+"',"+foodbean.getNew_price()+","+foodbean.getOld_price()+",'"+foodbean.getAuthor()+"','"+foodbean.getDetail()+"',"+foodbean.getB_id()+")";
	    falg = conn.executeUpdate(sql);
	    System.out.println("添加食物时的SQL" + sql);
	    conn.close();
	}
	} catch (SQLException ex) {
	falg = 0;
	}
	System.out.println("falg:"+falg);
	return falg;
	}
	//修改数据
	public int update(FoodBean foodbean){
	String sql="Update b_message set b_name='"+foodbean.getB_name()+"',new_price="+foodbean.getNew_price()+",old_price="+foodbean.getOld_price()+",author='"+foodbean.getAuthor()+"',detail='"+foodbean.getDetail()+"',b_id="+foodbean.getB_id()+" where id="+foodbean.getId()+"";
	int falg=conn.executeUpdate(sql);
	System.out.println("修改数据时的SQL"+sql);
	System.out.println(falg);
	conn.close();
	return falg;
	}
	//删除数据
	public int delete(FoodBean foodbean){
	String sql="delete from b_message where id="+foodbean.getId()+"";
	int falg=conn.executeUpdate(sql);
	System.out.println(falg);
	System.out.println("删除时的SQL"+sql);
	return falg;
	}

	}
