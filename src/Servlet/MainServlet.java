package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import POJO.Channel;
import POJO.STB;
import POJO.STB_Inventory;
import POJO.Package;

import JDBC.JDBCUtility;
import Logic.MainLogic;


@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MainLogic ml=new MainLogic();
    
    public MainServlet() {
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String operation=request.getParameter("Operation");
		if(operation.contentEquals("searchSTB"))
		{
			String stbId=request.getParameter("stb_id");
			try
			{
				STB stb=ml.viewSTB(Integer.parseInt(stbId));
				if(stb == null)
				{
					response.sendRedirect("404Error.jsp");
					return;
				}
				HttpSession session=request.getSession();
				session.setAttribute("stb", stb);
				session.setAttribute("operation", "searchSTB");
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/SetTopBoxView.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("editSTB"))
		{
			
			try
			{
				String stbId=request.getParameter("stb_id");
				STB stb = ml.viewSTB(Integer.parseInt(stbId));
				if(stb == null)
				{
					response.sendRedirect("404Error.jsp");
					return;
				}
				HttpSession session = request.getSession();
				session.setAttribute("operation", "editSTB");
				session.setAttribute("stb_id", stbId);
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/SetTopBoxUpdate.jsp").forward(request, response);
				
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
				
			}
		}
		else if(operation.contentEquals("deleteSTB"))
		{
			String stbId=request.getParameter("stb_id");
			try
			{
				STB stb = ml.viewSTB(Integer.parseInt(stbId));
				if(stb == null)
				{
					response.sendRedirect("404Error.jsp");
					return;
				}
				ml.deleteSTB(Integer.parseInt(stbId));
				HttpSession session=request.getSession();
				session.setAttribute("operation", "viewAll");
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/SetTopBox.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("searchChannel"))
		{
			String channelId=request.getParameter("channel_id");
			try
			{
				Channel channel=ml.viewChannel(Integer.parseInt(channelId));
				if(channel == null)
				{
					response.sendRedirect("404Error.jsp");
					return;
				}
				HttpSession session=request.getSession();
				session.setAttribute("channel", channel);
				session.setAttribute("operation", "searchChannel");
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/ChannelView.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("editChannel"))
		{
			String channelId=request.getParameter("channel_id");
			
			try
			{
				Channel c = ml.viewChannel(Integer.parseInt(channelId));
				if(c == null)
				{
					response.sendRedirect("404Error.jsp");
					return;
				}
				HttpSession session = request.getSession();
				session.setAttribute("operation", "editChannel");
				session.setAttribute("channel_id", channelId);
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/ChannelUpdate.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("deleteChannel"))
		{
			String channelId=request.getParameter("channel_id");
			try
			{
				Channel c = ml.viewChannel(Integer.parseInt(channelId));
				if(c == null)
				{
					response.sendRedirect("404Error.jsp");
					return;
				}
				ml.deleteChannel(Integer.parseInt(channelId));
				HttpSession session=request.getSession();
				session.setAttribute("operation", "viewAll");
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/Channel.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("searchPkg"))
		{
			String pkgId=request.getParameter("pkg_id");
			try
			{
				Package pkg=ml.viewChannelPackage(Integer.parseInt(pkgId));
				if(pkg == null)
				{
					response.sendRedirect("404Error.jsp");
					return;
				}
				HttpSession session=request.getSession();
				session.setAttribute("pkg", pkg);
				session.setAttribute("operation", "searchPkg");
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/PackageView.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("editPkg"))
		{
			String pkgId=request.getParameter("pkg_id");
			
			try
			{
				Package p = ml.viewChannelPackage(Integer.parseInt(pkgId));
				if(p == null)
				{
					response.sendRedirect("404Error.jsp");
					return;
				}
				HttpSession session = request.getSession();
				session.setAttribute("operation", "editPkg");
				session.setAttribute("pkg_id", pkgId);
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/PackageUpdate.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("deletePkg"))
		{
			String pkgId=request.getParameter("pkg_id");
			try
			{
				Package p = ml.viewChannelPackage(Integer.parseInt(pkgId));
				if(p == null)
				{
					response.sendRedirect("404Error.jsp");
					return;
				}
				ml.deleteChannelPackage(Integer.parseInt(pkgId));
				HttpSession session=request.getSession();
				session.setAttribute("operation", "deletePkg");
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/Package.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("searchSTBInventory"))
		{
			String inventoryId=request.getParameter("inventory_id");
			try
			{
				STB_Inventory stbInventory =ml.viewSTB_Inventory(Integer.parseInt(inventoryId));
				HttpSession session=request.getSession();
				session.setAttribute("stbInventory", stbInventory);
				session.setAttribute("operation", "searchInventory");
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("SetTopBoxInventory.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("editSTBInventory"))
		{
			String inventoryId=request.getParameter("inventory_id");
			try
			{
				ml.viewSTB_Inventory(Integer.parseInt(inventoryId));
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
		else if(operation.contentEquals("deleteSTBInventory"))
		{
			String inventoryId=request.getParameter("inventory_id");
			try
			{
				ml.deleteChannelPackage(Integer.parseInt(inventoryId));
				HttpSession session=request.getSession();
				session.setAttribute("operation", "deleteInventory");
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("SetTopBoxInventory.jsp").forward(request, response);
			}
			catch(ClassNotFoundException | SQLException | NumberFormatException e)
			{
				//do something
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String option=request.getParameter("option");
		if(option.contentEquals("stblogin"))
		{
			System.out.println("validating login");
			
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			
			try {
				String role=ml.validateLogin(username, password);
				HttpSession session=request.getSession();
				session.setAttribute("role", role);
				getServletContext().setAttribute("session", session);
				getServletContext().getRequestDispatcher("/homepage.jsp").forward(request, response);
				
			} catch (ClassNotFoundException | SQLException e) {
				// login failed
				e.printStackTrace();
			}
			
		}
		else if(option.contentEquals("STB_Inventory"))
		{
			String stb_inventory_id=request.getParameter("stb_inventory_id");
			int stb_type=Integer.parseInt(request.getParameter("stb_type"));
			int stb_serial_number=Integer.parseInt(request.getParameter("stb_serial_number"));
			int stb_mac_id=Integer.parseInt(request.getParameter("stb_mac_id"));
			int remote_asset_id=Integer.parseInt(request.getParameter("remote_asset_id"));
			int dish_asset_id=Integer.parseInt(request.getParameter("dish_asset_id"));
			String status=request.getParameter("stb_status");
			
			/*STB_Inventory stbInventory=new STB_Inventory(stb_type, stb_inventory_id, stb_serial_number, stb_mac_id, remote_asset_id, dish_asset_id, status);
			try {
				ml.createSTB_Inventory(stbInventory);
			} catch (SQLException | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("404Error.jsp");
			}*/
		}
		else if(option.contentEquals("STB"))
		{
			int stb_id=Integer.parseInt(request.getParameter("stb_id"));
			//String stb_type=request.getParameter("stb_type");
			String stb_type=request.getParameter("stb_type");
			System.out.println(stb_type);
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
				ml.createSTB(stb);
				response.sendRedirect("SetTopBox.jsp");
			} catch (SQLException | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("404Error.jsp");
			}
		}
		else if(option.contentEquals("STBUpdate"))
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
				ml.updateSTB(stb);
				response.sendRedirect("SetTopBox.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("404Error.jsp");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("404Error.jsp");
			}
		}
		else if(option.contentEquals("StbChannel"))
		{
			int channel_id=Integer.parseInt(request.getParameter("channel_id"));
			int package_id=Integer.parseInt(request.getParameter("package_id"));
			String channel_name=request.getParameter("channel_name");
			String channel_band=request.getParameter("channel_band");
			String channel_vcf=request.getParameter("channel_vcf");
			String channel_acf=request.getParameter("channel_acf");
			String channel_chargetype=request.getParameter("channel_chargetype");
			String channel_transmission_type=request.getParameter("channel_transmission_type");
			double channel_change=Double.parseDouble(request.getParameter("channel_change"));
			String channel_status = request.getParameter("channel_status");
			
			Channel channel = new Channel(channel_id, package_id, channel_name, channel_band, channel_vcf, channel_acf, channel_chargetype, channel_transmission_type, channel_change, channel_status);
			try {
				ml.createChannel(channel);
				response.sendRedirect("Channel.jsp");
			} catch (SQLException | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("404Error.jsp");
			}
		}
		else if(option.contentEquals("ChannelUpdate"))
		{
			int channel_id=Integer.parseInt(request.getParameter("channel_id"));
			int package_id=Integer.parseInt(request.getParameter("package_id"));
			String channel_name=request.getParameter("channel_name");
			String channel_band=request.getParameter("channel_band");
			String channel_vcf=request.getParameter("channel_vcf");
			String channel_acf=request.getParameter("channel_acf");
			String channel_chargetype=request.getParameter("channel_chargetype");
			String channel_transmission_type=request.getParameter("channel_transmission_type");
			double channel_change=Double.parseDouble(request.getParameter("channel_change"));
			String channel_status = request.getParameter("channel_status");
			
			Channel channel = new Channel(channel_id, package_id, channel_name, channel_band, channel_vcf, channel_acf, channel_chargetype, channel_transmission_type, channel_change, channel_status);
			try {
				ml.updateChannel(channel);
				response.sendRedirect("Channel.jsp");
			} catch (SQLException | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("404Error.jsp");
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
			
			Package pkg=new Package(package_id, package_name, package_category, package_charging_type, 
					package_transmission_type, package_cost, package_available_from, package_available_to, package_default);
			try {
				ml.createChannelPackage(pkg);
				response.sendRedirect("Package.jsp");
			} catch (SQLException | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("404Error.jsp");
			}
		}
		else if(option.contentEquals("StbPackageUpdate"))
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
					package_transmission_type, package_cost, package_available_from, package_available_to, package_default);
			try {
				ml.updateChannelPackage(pkg);
				response.sendRedirect("Package.jsp");
			} catch (SQLException | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				response.sendRedirect("404Error.jsp");
			}
		}
	}

}
