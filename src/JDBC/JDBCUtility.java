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
	public void createSTB(STB box) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "INSERT INTO STB VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, box.getStb_id());
		ps.setString(2, box.getStb_type());
		ps.setString(3, box.getStb_features());
		ps.setInt(4, box.getStb_length());
		ps.setInt(5, box.getStb_breadth());
		ps.setInt(6, box.getStb_width());
		ps.setDouble(7, box.getStb_price());
		ps.setDouble(8, box.getStb_installation_charges());
		ps.setDouble(9, box.getStb_upgradation_charge());
		ps.setDouble(10, box.getStb_discount());
		ps.setString(11, box.getStb_billing_type());
		ps.setDouble(12, box.getStb_refundable_deposit_amount());
		ps.setInt(13, box.getStb_inventory_id());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void viewSTB(int id) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "SELECT * FROM STB WHERE stb_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			STB temp = new STB(id, rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getDouble(7), rs.getDouble(8), rs.getDouble(9), rs.getDouble(10), rs.getString(11), rs.getDouble(12), rs.getInt(13));
			System.out.println(temp);
		}
		rs.close();
		ps.close();
		conn.close();
	}
	public void updateSTB(STB box) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "UPDATE STB SET stb_type=?, stb_features=?, stb_length=?, stb_breath=?, stb_width=?, stb_price=?, stb_installation_charge=?, stb_upgradation_charge=?, stb_discount=?, stb_billing_type=?, stb_refundable_deposit_amount=? WHERE stb_id=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, box.getStb_type());
		ps.setString(2, box.getStb_features());
		ps.setInt(3, box.getStb_length());
		ps.setInt(4, box.getStb_breadth());
		ps.setInt(5, box.getStb_width());
		ps.setDouble(6, box.getStb_price());
		ps.setDouble(7, box.getStb_installation_charges());
		ps.setDouble(8, box.getStb_upgradation_charge());
		ps.setDouble(9, box.getStb_discount());
		ps.setString(10, box.getStb_billing_type());
		ps.setDouble(11, box.getStb_refundable_deposit_amount());
		ps.setInt(12, box.getStb_id());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void deleteSTB(int id) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "DELETE STB WHERE stb_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void createSTB_Inventory(STB_Inventory box) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "INSERT INTO stb_inventory VALUES(?,?,?,?,?,?,?)";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, box.getStb_inventory_id());
		ps.setString(2, box.getStb_type());
		ps.setInt(3, box.getStb_serial_number());
		ps.setInt(4, box.getStb_mac_id());
		ps.setInt(5, box.getRemote_asset_id());
		ps.setInt(6, box.getDish_asset_id());
		ps.setString(7, box.getStatus());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void viewSTB_Inventory(int id) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "SELECT * FROM stb_inventory WHERE stb_inventory_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			STB_Inventory temp = new STB_Inventory(id, rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7));
			System.out.println(temp);
		}
		rs.close();
		ps.close();
		conn.close();
	}
	public void updateSTB_Inventory(STB_Inventory box) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "UPDATE stb_inventory SET stb_type=?, stb_serial_number=?, stb_mac_id=?, remote_asset_id=?, dish_asset_id=?, stb_status=? WHERE stb_inventory_id=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, box.getStb_type());
		ps.setInt(2, box.getStb_serial_number());
		ps.setInt(3, box.getStb_mac_id());
		ps.setInt(4, box.getRemote_asset_id());
		ps.setInt(5, box.getDish_asset_id());
		ps.setString(6, box.getStatus());
		ps.setInt(7, box.getStb_inventory_id());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void deleteSTB_Inventory(int id) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "DELETE stb_inventory WHERE stb_inventory_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void createChannel(Channel c) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "INSERT INTO channel VALUES(?,?,?,?,?,?,?,?)";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, c.getChannel_id());
		ps.setString(2, c.getChannel_name());
		ps.setInt(3, c.getChannel_band());
		ps.setDouble(4, c.getChannel_vcf());
		ps.setDouble(5, c.getChannel_acf());
		ps.setString(6, c.getChannel_change_type());
		ps.setString(7, c.getTransmission_type());
		ps.setDouble(8, c.getChannel_change());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void viewChannel(int id) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "SELECT * FROM channel WHERE channel_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			Channel temp = new Channel(id, rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDouble(5), rs.getString(6), rs.getString(7), rs.getDouble(8));
			System.out.println(temp);
		}
		rs.close();
		ps.close();
		conn.close();
	}
	public void updateChannel(Channel c) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "UPDATE channel SET channel_name=?, channel_band=?, channel_vcf=?, channel_acf=?, channel_change_type=?, channel_transmission_type=?, channel_change=? WHERE channel_id=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, c.getChannel_name());
		ps.setInt(2, c.getChannel_band());
		ps.setDouble(3, c.getChannel_vcf());
		ps.setDouble(4, c.getChannel_acf());
		ps.setString(5, c.getChannel_change_type());
		ps.setString(6, c.getTransmission_type());
		ps.setDouble(7, c.getChannel_change());
		ps.setInt(8, c.getChannel_id());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void deleteChannel(int id) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "DELETE channel WHERE channel_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}public void createChannelPackage(Package cp) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "INSERT INTO package VALUES(?,?,?,?,?,?,?,?,?,?)";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, cp.getPackage_id());
		ps.setString(2, cp.getPackage_name());
		ps.setString(3, cp.getPackage_category());
		ps.setString(4, cp.getPackage_charging_type());
		ps.setString(5, cp.getTransmission_type());
		ps.setDouble(6, cp.getPackage_cost());
		ps.setDate(7, java.sql.Date.valueOf(cp.getPackage_available_from()));
		ps.setDate(8, java.sql.Date.valueOf(cp.getPackage_available_to()));
		ps.setString(9, cp.getPackage_default());
		ps.setInt(10, cp.getChannel_id());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void viewChannelPackage(int id) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "SELECT * FROM package WHERE package_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			Package temp = new Package(id, rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
			System.out.println(temp);
		}
		rs.close();
		ps.close();
		conn.close();
	}
	public void updateChannelPackage(Package cp) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "UPDATE package SET package_name=?, package_category=?, package_charging_type=?, transmission_type=?, package_cost=?, package_available_from=?, package_available_to=?, package_default=? WHERE package_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, cp.getPackage_name());
		ps.setString(2, cp.getPackage_category());
		ps.setString(3, cp.getPackage_charging_type());
		ps.setString(4, cp.getTransmission_type());
		ps.setDouble(5, cp.getPackage_cost());
		ps.setDate(6, Date.valueOf(cp.getPackage_available_from()));
		ps.setDate(7, Date.valueOf(cp.getPackage_available_to()));
		ps.setString(8, cp.getPackage_default());
		ps.setInt(9, cp.getPackage_id());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
	public void deleteChannelPackage(int id) throws SQLException
	{
		conn = DriverManager.getConnection(URL, uname, pwd);
		String sql = "DELETE package WHERE package_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
	}
}
