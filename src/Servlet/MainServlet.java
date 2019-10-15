package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import POJO.Channel;
import POJO.STB;
import POJO.STB_Inventory;
import POJO.Package;

import JDBC.JDBCUtility;


@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public MainServlet() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String option=request.getParameter("option");
		JDBCUtility jdbcUtility = null;
		try {
			jdbcUtility = new JDBCUtility();
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if(option.contentEquals("STB_Inventory"))
		{
			String stb_inventory_id=request.getParameter("stb_inventory_id");
			int stb_type=Integer.parseInt(request.getParameter("stb_type"));
			int stb_serial_number=Integer.parseInt(request.getParameter("stb_serial_number"));
			int stb_mac_id=Integer.parseInt(request.getParameter("stb_mac_id"));
			int remote_asset_id=Integer.parseInt(request.getParameter("remote_asset_id"));
			int dish_asset_id=Integer.parseInt(request.getParameter("dish_asset_id"));
			String status=request.getParameter("stb_status");
			
			STB_Inventory stbInventory=new STB_Inventory(stb_type, stb_inventory_id, stb_serial_number, stb_mac_id, remote_asset_id, dish_asset_id, status);
			try {
				jdbcUtility.createSTB_Inventory(stbInventory);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(option.contentEquals("STB"))
		{
			int stb_id=Integer.parseInt(request.getParameter("stb_id"));
			String stb_type=request.getParameter("stb_type");
			String stb_features=request.getParameter("stb_features");
			int stb_length=Integer.parseInt(request.getParameter("stb_length"));
			int stb_breadth=Integer.parseInt(request.getParameter("stb_breadth"));
			int stb_width=Integer.parseInt(request.getParameter("stb_width"));
			double stb_price=Double.parseDouble(request.getParameter("stb_price"));
			double stb_installation_charges=Double.parseDouble(request.getParameter("stb_installation_charges"));
			double stb_upgradation_charge=Double.parseDouble(request.getParameter("stb_upgradation_charge"));
			double stb_discount=Double.parseDouble(request.getParameter("stb_discount"));
			String stb_billing_type=request.getParameter("stb_billing_type");
			double stb_refundable_deposit_amount=Double.parseDouble(request.getParameter("stb_refundable_deposit_amount"));
			int stb_inventory_id=Integer.parseInt(request.getParameter("stb_inventory_id"));
			
			STB stb=new STB(stb_id, stb_type, stb_features, stb_length, stb_breadth, stb_width, stb_price, stb_installation_charges, stb_upgradation_charge, stb_discount, stb_billing_type, stb_refundable_deposit_amount, stb_inventory_id);
			try {
				jdbcUtility.createSTB(stb);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(option.contentEquals("channel"))
		{
			int channel_id=Integer.parseInt(request.getParameter("channel_id"));
			String channel_name=request.getParameter("channel_name");
			int channel_band=Integer.parseInt(request.getParameter("channel_band"));;
			double channel_vcf=Double.parseDouble(request.getParameter("channel_vcf"));
			double channel_acf=Double.parseDouble(request.getParameter("channel_acf"));
			String channel_chargetype=request.getParameter("channel_chargetype");
			String channel_transmission_type=request.getParameter("channel_transmission_type");
			double channel_change=Double.parseDouble(request.getParameter("channel_change"));
			
			Channel channel=new Channel(channel_id, channel_name, channel_band, channel_vcf, channel_acf, channel_chargetype, channel_transmission_type, channel_change);
			try {
				jdbcUtility.createChannel(channel);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(option.contentEquals("StbPackage"))
		{
			int package_id=Integer.parseInt(request.getParameter("package_id"));
			String package_name=request.getParameter("package_name");
			String package_category=request.getParameter("package_category");
			String package_charging_type=request.getParameter("package_charging_type");
			String package_transmission_type=request.getParameter("package_transmission_type");
			double package_cost=Double.parseDouble(request.getParameter("package_cost"));
			String package_available_from=request.getParameter("package_available_from");
			String package_available_to=request.getParameter("package_available_to");
			String package_default=request.getParameter("package_default");
			int channel_id=Integer.parseInt(request.getParameter("channel_id"));
			
			Package pkg=new Package(package_id, package_name, package_category, package_charging_type, 
					package_transmission_type, package_cost, package_available_from, package_available_to, package_default, channel_id);
			try {
				jdbcUtility.createChannelPackage(pkg);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
