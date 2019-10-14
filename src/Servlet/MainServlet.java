package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import POJO.Channel;
import POJO.STB;
import POJO.STB_Inventory;
import POJO.Package;


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

		String hidden=request.getParameter("hidden");
		
		if(hidden.contentEquals("STB_Inventory"))
		{
			String stb_inventory_id=request.getParameter("stb_inventory_id");
			int stb_type=Integer.parseInt(request.getParameter("stb_type"));
			int stb_serial_number=Integer.parseInt(request.getParameter("stb_serial_number"));
			int stb_mac_id=Integer.parseInt(request.getParameter("stb_mac_id"));
			int remote_asset_id=Integer.parseInt(request.getParameter("remote_asset_id"));
			int dish_asset_id=Integer.parseInt(request.getParameter("dish_asset_id"));
			String status=request.getParameter("dish_asset_id");
			
			STB_Inventory stbInventory=new STB_Inventory(stb_type, stb_inventory_id, stb_serial_number, stb_mac_id, remote_asset_id, dish_asset_id, status);
			
		}
		else if(hidden.contentEquals("STB"))
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
			
			STB stb=new STB(stb_inventory_id, stb_billing_type, stb_billing_type, stb_inventory_id, stb_inventory_id, stb_inventory_id, stb_refundable_deposit_amount, stb_refundable_deposit_amount, stb_refundable_deposit_amount, stb_refundable_deposit_amount, stb_billing_type, stb_refundable_deposit_amount, stb_inventory_id);
		}
		else if(hidden.contentEquals("channel"))
		{
			int channel_id=Integer.parseInt(request.getParameter("channel_id"));
			String channel_name=request.getParameter("channel_name");
			int channel_band=Integer.parseInt(request.getParameter("channel_band"));;
			double channel_vcf=Double.parseDouble(request.getParameter("channel_vcf"));
			double channel_acf=Double.parseDouble(request.getParameter("channel_acf"));
			String channel_change_type=request.getParameter("channel_change_type");
			String transmission_type=request.getParameter("transmission_type");
			double channel_change=Double.parseDouble(request.getParameter("channel_change"));
			
			Channel channel=new Channel(channel_band, transmission_type, channel_band, channel_change, channel_change, transmission_type, transmission_type, channel_change);
		}
		else if(hidden.contentEquals("package"))
		{
			int package_id=Integer.parseInt(request.getParameter("package_id"));
			String package_name=request.getParameter("package_name");
			String package_category=request.getParameter("package_category");
			String package_charging_type=request.getParameter("package_charging_type");
			String transmission_type=request.getParameter("transmission_type");
			double package_cost=Double.parseDouble(request.getParameter("package_cost"));
			String package_available_from=request.getParameter("package_available_from");
			String package_available_to=request.getParameter("package_available_to");
			String package_default=request.getParameter("package_default");
			int channel_id=Integer.parseInt(request.getParameter("channel_id"));
			
			Package pkg=new Package(package_id, package_name, package_category, package_charging_type, 
					transmission_type, package_cost, package_available_from, package_available_to, package_default, channel_id);
		}
	}

}
