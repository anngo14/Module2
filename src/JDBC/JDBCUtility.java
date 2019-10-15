package JDBC;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import POJO.Channel;
import POJO.STB;
import POJO.STB_Inventory;
import POJO.Package;


public class JDBCUtility {

	static Connection conn = null;

	final static String uname = "system";
	final static String pwd = "12345";
	final static String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	final static String DriverInfo = "oracle.jdbc.driver.OracleDriver";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName(DriverInfo);
		conn = DriverManager.getConnection(URL, uname, pwd);
		return conn;
	}
}
