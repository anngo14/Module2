package JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtility {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	final String uname = "system";
	final String pwd = "12345";
	final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	final String DriverInfo = "oracle.jdbc.driver.OracleDriver";
	
	public JDBCUtility() throws ClassNotFoundException, SQLException
	{
		Class.forName(DriverInfo);
	}
}
