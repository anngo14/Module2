<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.STB_Inventory, Logic.MainLogic" %>
<%@ include file="container.html" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Set Top Box Management</title>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
        <div class="navLinks">
            <a href="SetTopBox.jsp">Set Top Box</a> |
            <a href="SetTopBoxInventory.jsp">STB Inventory</a> |
            <a href="Channel.jsp">Channel</a> |
            <a href="Package.jsp">Packages</a> |
            <a href="login.jsp">Logout</a>
        </div>
    </div>
    <div class="mainConatiner">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Set Top Box Inventory</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="SetTopBoxInventoryDetails.jsp">Add a STB Inventory</a>
                </div>
            </div>
            <div class="searchContainer">
                <form action="MainServlet" method="get">
                    <span>STB ID: </span><input type="text">
                    <input type="submit" value="Search" disabled>
                    <input type="submit" value="Edit" disabled>
                    <input type="submit" value="Delete" disabled>
                </form>
            </div>
            <div class="innerList">
            <%! MainLogic m1 = new MainLogic(); 
            %>
            <%
           	 	//ServletContext sc=request.getServletContext();
        		//HttpSession sess=(HttpSession) sc.getAttribute("session");
            	int inventory_id = (int) session.getAttribute("STB_Inventory_ID");
            	STB_Inventory s = m1.viewSTB_Inventory(inventory_id);
            %>
                <div class="innerListItem">
                    <h3>ID: <%= s.getStb_inventory_id() %></h3>
                    <h3>Type: <%= s.getStb_type() %></h3>
                    <h3>Serial Number: <%= s.getStb_serial_number() %></h3>
                    <h3>MAC ID: <%= s.getStb_mac_id() %></h3>
                    <h3>Remote Asset ID: <%= s.getRemote_asset_id() %></h3>
                    <h3>Dish Asset ID: <%= s.getDish_asset_id() %></h3>
                    <h3>Status: <%= s.getStatus() %></h3>
                	<h3>Retailer ID: <%= s.getRetailer_id() %></h3>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="credit">
            <h3>Team 1 &copy;</h3>
        </div>
    </footer>
</body>
</html>