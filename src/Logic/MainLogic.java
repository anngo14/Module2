package Logic;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import JDBC.JDBCUtility;
import POJO.Category;
import POJO.Channel;
import POJO.Package;
import POJO.STB;
import POJO.STB_Inventory;

public class MainLogic {

	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	
	public int createSTB(STB box) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
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
		return i;
	}
	
	public STB viewSTB(int id) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM STB WHERE stb_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			STB temp = new STB(id, rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getDouble(7), rs.getDouble(8), rs.getDouble(9), rs.getDouble(10), rs.getString(11), rs.getDouble(12), rs.getInt(13));
			System.out.println(temp);
			rs.close();
			ps.close();
			conn.close();
			return temp;
		}
		rs.close();
		ps.close();
		conn.close();
		return null;
	}
	public ArrayList<STB> viewAllSTB() throws ClassNotFoundException, SQLException
	{
		ArrayList<STB> list = new ArrayList<STB>();
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM STB";
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			STB temp = new STB(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getDouble(7), rs.getDouble(8), rs.getDouble(9), rs.getDouble(10), rs.getString(11), rs.getDouble(12), rs.getInt(13));
			list.add(temp);
		}
		rs.close();
		ps.close();
		conn.close();
		return list;
	}
	public int updateSTB(STB box) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
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
		return i;
	}
	public int deleteSTB(int id) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "DELETE STB WHERE stb_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return i;
	}
	public int createSTB_Inventory(STB_Inventory box) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "INSERT INTO stb_inventory VALUES(?,?,?,?,?,?,?,?)";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, box.getStb_inventory_id());
		ps.setString(2, box.getStb_type());
		ps.setString(3, box.getStb_serial_number());
		ps.setLong(4, box.getStb_mac_id());
		ps.setLong(5, box.getRemote_asset_id());
		ps.setLong(6, box.getDish_asset_id());
		ps.setString(7, box.getStatus());
		ps.setInt(8, box.getRetailer_id());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return i;
	}
	public STB_Inventory viewSTB_Inventory(int id) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM stb_inventory WHERE stb_inventory_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			STB_Inventory temp = new STB_Inventory(id, rs.getString(2), rs.getString(3), rs.getLong(4), rs.getLong(5), rs.getLong(6), rs.getString(7), rs.getInt(8));
			System.out.println(temp);
			rs.close();
			ps.close();
			conn.close();
			return temp;
		}
		rs.close();
		ps.close();
		conn.close();
		return null;
	}
	public ArrayList<STB_Inventory> viewAllSTB_Inventory() throws SQLException, ClassNotFoundException
	{
		ArrayList<STB_Inventory> list = new ArrayList<STB_Inventory>();
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM stb_inventory";
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			STB_Inventory temp = new STB_Inventory(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getLong(4), rs.getLong(5), rs.getLong(6), rs.getString(7), rs.getInt(8));
			System.out.println(temp);
			list.add(temp);
		}
		rs.close();
		ps.close();
		conn.close();
		return list;
	}
	public int updateSTB_Inventory(STB_Inventory box) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "UPDATE stb_inventory SET stb_type=?, stb_serial_number=?, stb_mac_id=?, remote_asset_id=?, dish_asset_id=?, stb_status=?, retailer_id=? WHERE stb_inventory_id=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, box.getStb_type());
		ps.setString(2, box.getStb_serial_number());
		ps.setLong(3, box.getStb_mac_id());
		ps.setLong(4, box.getRemote_asset_id());
		ps.setLong(5, box.getDish_asset_id());
		ps.setString(6, box.getStatus());
		ps.setInt(7, box.getRetailer_id());
		ps.setInt(8, box.getStb_inventory_id());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return i;
	}
	public int deleteSTB_Inventory(int id) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "DELETE stb_inventory WHERE stb_inventory_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return i;
	}
	public int createChannel(Channel c) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "INSERT INTO channel VALUES(?,?,?,?,?,?,?,?,?,?)";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, c.getChannel_id());
		ps.setInt(2, c.getPackage_id());
		ps.setString(3, c.getChannel_name());
		ps.setString(4, c.getChannel_band());
		ps.setString(5, c.getChannel_vcf());
		ps.setString(6, c.getChannel_acf());
		ps.setString(7, c.getChannel_change_type());
		ps.setString(8, c.getTransmission_type());
		ps.setString(9, c.getChannel_change());
		ps.setString(10, c.getChannel_status());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return i;
	}
	public Channel viewChannel(int id) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM channel WHERE channel_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			Channel temp = new Channel(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
			rs.close();
			ps.close();
			conn.close();
			return temp;
		}
		rs.close();
		ps.close();
		conn.close();
		return null;
	}
	public ArrayList<Channel> viewAllChannel() throws SQLException, ClassNotFoundException
	{
		ArrayList<Channel> list = new ArrayList<Channel>();
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM channel";
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			Channel temp = new Channel(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
			list.add(temp);
		}
		rs.close();
		ps.close();
		conn.close();
		return list;
	}
	public int updateChannel(Channel c) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "UPDATE channel SET package_id=?, channel_name=?, channel_band=?, channel_vcf=?, channel_acf=?, channel_chargetype_paid=?, channel_transmission_type_st=?, channel_charge=?, channel_status_enabled=? WHERE channel_id=?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, c.getPackage_id());
		ps.setString(2, c.getChannel_name());
		ps.setString(3, c.getChannel_band());
		ps.setString(4, c.getChannel_vcf());
		ps.setString(5, c.getChannel_acf());
		ps.setString(6, c.getChannel_change_type());
		ps.setString(7, c.getTransmission_type());
		ps.setString(8, c.getChannel_change());
		ps.setString(9, c.getChannel_status());
		ps.setInt(10, c.getChannel_id());

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return i;
	}
	public int deleteChannel(int id) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "DELETE channel WHERE channel_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return i;
	}
	public int disableChannel(int id) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "UPDATE channel SET channel_transmission_type = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, "disabled");
		
		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return i;
	}
	public int createChannelPackage(Package cp) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "INSERT INTO package VALUES(?,?,?,?,?,?,?,?,?)";
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

		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		addCategory(new Category(0, cp.getPackage_id(), 1, 1, cp.getPackage_category()));
		return i;
	}
	public Package viewChannelPackage(int id) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM package WHERE package_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			Package temp = new Package(id, rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7), rs.getString(8), rs.getString(9));
			System.out.println(temp);
			rs.close();
			ps.close();
			conn.close();
			return temp;
		}
		rs.close();
		ps.close();
		conn.close();
		return null;
	}
	public ArrayList<Package> viewChannelPackage() throws SQLException, ClassNotFoundException
	{
		ArrayList<Package> list = new ArrayList<Package>();
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM package";
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			Package temp = new Package(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDouble(6), rs.getString(7), rs.getString(8), rs.getString(9));
			System.out.println(temp);
			list.add(temp);
		}
		rs.close();
		ps.close();
		conn.close();
		return list;
	}
	public int updateChannelPackage(Package cp) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "UPDATE package SET package_name=?, package_category=?, package_charging_type=?, package_transmission_type=?, package_cost=?, package_available_from=?, package_available_to=?, package_default=? WHERE package_id = ?";
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
		return i;
	}
	public int deleteChannelPackage(int id) throws SQLException, ClassNotFoundException
	{
		conn = JDBCUtility.getConnection();
		String sql = "DELETE package WHERE package_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		int i = ps.executeUpdate();
		
		ps.close();
		conn.close();
		return i;
	}
	
	public double calculateCost(Package p) throws ClassNotFoundException, SQLException
	{
		conn = JDBCUtility.getConnection();
		//sql query depends on how package relates to the Customer
		String sql = "SELECT SUM(channel_charge) FROM Channel WHERE package_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, p.getPackage_id());
		rs = ps.executeQuery();
		double cost = 0.0;
		while(rs.next())
		{
			cost += rs.getDouble(1);
		}
		
		rs.close();
		ps.close();
		conn.close();
		return cost;
	}
	public int addFeature(String s, int id) throws ClassNotFoundException, SQLException
	{
		conn = JDBCUtility.getConnection();
		String count = "SELECT COUNT(*) FROM features";
		ps = conn.prepareStatement(count);
		rs = ps.executeQuery();
		int newId = -1;
		while(rs.next())
		{
			newId = rs.getInt(1);
		}
		rs.close();
		//sql query depends on how the feature relates to the STB
		String sql = "INSERT INTO features VALUES(?,?,?)";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, newId);
		ps.setInt(2, id);
		ps.setString(3, s);
		int i = ps.executeUpdate();
		
		return i;
	}
	public ArrayList<String> viewAllFeatures(int id) throws ClassNotFoundException, SQLException
	{
		ArrayList<String> list = new ArrayList<String>();
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM features WHERE stb_id = ?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		while(rs.next())
		{
			list.add(rs.getString("stb_features"));
		}
		return list;
	}
	public int addCategory(Category c) throws ClassNotFoundException, SQLException
	{
		conn = JDBCUtility.getConnection();
		String count = "SELECT COUNT(*) FROM categories";
		ps = conn.prepareStatement(count);
		rs = ps.executeQuery();
		int newId = -1;
		while(rs.next())
		{
			newId = rs.getInt(1);
		}
		rs.close();
		//sql query depends on how the channel relates to the Customer
		String sql = "INSERT INTO categories VALUES(?,?,?,?,?)";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, newId+1);
		ps.setInt(2, c.getPackage_id());
		ps.setInt(3, c.getMin_channel());
		ps.setInt(4, c.getMax_channel());
		ps.setString(5, c.getCategory_description());
		int i = ps.executeUpdate();
		
		return i;
	}
	public ArrayList<Category> viewAllCategories(int id) throws ClassNotFoundException, SQLException
	{
		ArrayList<Category> list = new ArrayList<Category>();
		conn = JDBCUtility.getConnection();
		String sql = "SELECT * FROM categories where package_id = ? ";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs = ps.executeQuery();
		
		while(rs.next())
		{
			Category temp = new Category(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5));
			list.add(temp);
		}
		return list;
	}
	public String validateLogin(String username, String password) throws ClassNotFoundException, SQLException
	{
		conn=JDBCUtility.getConnection();
		String sql="SELECT ROLE FROM USERS WHERE USERNAME=? AND PASSWORD=?";
		ps=conn.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, password);
		
		rs=ps.executeQuery();
		if(rs.next())
		{
			String role=rs.getString(1);
			return role;
		}
		
		
		return null;
	}
	public void writeInventory(ArrayList<String[]> data) throws ClassNotFoundException, SQLException
	{
		for(int i=0;i<data.size();i++)
		{
			String[] temp=data.get(i);
			//System.out.println(Arrays.toString(temp));
			int stb_inventory_id=Integer.parseInt(temp[0]);
			String stb_type=temp[1];
			String stb_serial_number=temp[2];
			int stb_mac_id=Integer.parseInt(temp[3]);
			int remote_asset_id=Integer.parseInt(temp[4]);
			int dish_asset_id=Integer.parseInt(temp[5]);
			String status=temp[6];
			int retailer_id=Integer.parseInt(temp[7]);
			STB_Inventory stbInventory=new STB_Inventory(stb_inventory_id, stb_type, 
					stb_serial_number, stb_mac_id, remote_asset_id, dish_asset_id, status, retailer_id);
			createSTB_Inventory(stbInventory);
		}
		
	}

	public ArrayList<String> fetchInventoryData() throws ClassNotFoundException, SQLException {
		ArrayList<String> list = new ArrayList<String>();
		conn = JDBCUtility.getConnection();
		String sql="SELECT * FROM STB_INVENTORY";
		ps=conn.prepareStatement(sql);
		rs=ps.executeQuery();
		
		while(rs.next())
		{
			String record=rs.getString(1)+", "+rs.getString(2)+", "+rs.getString(3)+", "+rs.getString(4)+", "+rs.getString(5)+", "+
					rs.getString(6)+", "+rs.getString(7)+", "+rs.getString(8);
			list.add(record);
		}
		
		return list;
	}
	public ArrayList<Channel> getAvailableChannels(String transmission, String charging) throws ClassNotFoundException, SQLException
	{
		ArrayList<Channel> list = new ArrayList<Channel>();
		conn = JDBCUtility.getConnection();
		String t = "", c = "";
		String sql = "";
		if(transmission.equals("HD"))
		{
			t = "N";
			if(charging.equals("Paid"))
			{
				c = "Y";
				sql = "SELECT * FROM Channel";
				ps = conn.prepareStatement(sql);
			}
			else {
				c= "N";
				sql = "SELECT * FROM Channel WHERE channel_chargetype_paid = ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, c);
			}
		}
		else {
			t = "Y";
			if(charging.equals("Paid"))
			{
				c="Y";
				sql = "SELECT * FROM Channel WHERE channel_transmission_type_st = ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, t);
			}
			else {
				c="N";
				sql = "SELECT * FROM Channel WHERE channel_transmission_type_st = ? AND channel_chargetype_paid = ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, t);
				ps.setString(2, c);
			}
		}
		rs = ps.executeQuery();
		while(rs.next()) {
			Channel temp = new Channel(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
			list.add(temp);
		}
		rs.close();
		ps.close();
		conn.close();
		return list;
	}
	public ArrayList<Channel> allChannelsInPackage(int pid) throws ClassNotFoundException, SQLException
	{
		ArrayList<Channel> list = new ArrayList<Channel>();
		conn=JDBCUtility.getConnection();
		String sql = "SELECT * FROM Channel where package_id=?";
		ps = conn.prepareStatement(sql);
		ps.setInt(1, pid);
		rs = ps.executeQuery();
		while(rs.next())
		{
			Channel temp = new Channel(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
			list.add(temp);
		}
		rs.close();
		ps.close();
		conn.close();
		return list;
	}
}
