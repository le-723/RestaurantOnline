package com.gem.book_mall.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.gem.book_mall.util.DBInfo;
import com.gem.book_mall.util.IParseRs;
import com.mvc.util.ConnDB;

public class BaseDAO<T> {
	Connection conn=null;
	PreparedStatement psmt=null;
	ResultSet rs=null;
	
	private Connection getConnection(){
		try {
			Class.forName(DBInfo.DRIVER);
			return DriverManager.getConnection(DBInfo.URL,DBInfo.USER,DBInfo.PWD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
				
	}
	private void close(Connection conn,PreparedStatement psmt,ResultSet rs){
		try {
			if(rs!=null){
				rs.close();
			}
			if(psmt!=null){
				psmt.close();
			
			}
			if(conn!=null){
				conn.close();
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	protected boolean executeUpdate(String sql,Object... params){
		try {
			conn=getConnection();
			
			psmt=conn.prepareStatement(sql);
			
			setParams(params);
			
			int count=psmt.executeUpdate();
			return count>0; 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			close(conn, psmt, rs);
		}
		return false;
	}
	
	private void setParams(Object... params) throws SQLException{
		for(int i=0;i<params.length;i++){
			
			psmt.setObject(i+1, params[i]);
		}
	}
	
	
	protected List<T> executeQuery(IParseRs<T> parse,String sql,Object... params){
		
		try {
			conn=getConnection();
			psmt=conn.prepareStatement(sql);
			setParams(params);
			rs=psmt.executeQuery();
			return parse.parseRs(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(conn, psmt, rs);
		}
		return null;
	}
	
	protected T load(IParseRs<T> parse,String sql,Object... params){
		//��ѯһ������
		List<T> list= executeQuery(parse, sql, params);
		if(list!=null&&list.size()>0){
			return list.get(0);
		}else{
			return null;
		}
	}
	
	protected Object executeComplexQuery(IParseRs<T> parse,String sql,Object... params){
		//����ʱ���ⲿȷ������ʲôpojo����
				try {
					conn=getConnection();
					psmt=conn.prepareStatement(sql);
					setParams(params);
					rs=psmt.executeQuery();
					//���������,��֪�������ѯ������Ϣ��rs�������̶�
					//����һ����������Ľӿ�
					return parse.parseComplexRs(rs);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					close(conn, psmt, rs);
				}
				return null;
	}
	
	
}
