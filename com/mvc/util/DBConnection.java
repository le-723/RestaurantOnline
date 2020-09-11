package com.mvc.util;
 
 
import java.sql.DriverManager;
import java.sql.SQLException;
 
import com.mysql.jdbc.Connection;
 
 
public class DBConnection {
    public static Connection createConnection(){
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/db_restaurant?useUnicode=true&characterEncoding=utf8"; 
        String username = "root";
        String password = "root";
        try {
 
            Class.forName("com.mysql.jdbc.Driver"); //loading mysql driver
            con = (Connection) DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
            System.out.println("Printing connection object "+con);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
    
	/**
	 * 以下是获取oracle数据库的连接方法，注意使用oracle要导入oracle驱动相应的jar包.
	 * @return
	 */
//    private static String USERNAMR = "root";
//    private static String PASSWORD = "123";
//    private static String DRVIER = "oracle.jdbc.OracleDriver";
//    private static String URL = "jdbc:oracle:thin:@localhost:1521:orcl";
//	public Connection getConnection() {
//		Connection con = null;
//			 try {
//		            Class.forName(DRVIER);
//		            con = DriverManager.getConnection(URL, USERNAMR, PASSWORD);
//		            System.out.println("成功连接数据库");
//		        } catch (ClassNotFoundException e) {
//		            throw new RuntimeException("class not find !", e);
//		        } catch (SQLException e) {
//		            throw new RuntimeException("get connection error!", e);
//		        }
//		
//
//		return con;
//	}
}