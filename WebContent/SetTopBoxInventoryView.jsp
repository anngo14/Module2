<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.STB_Inventory" %>
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
                    <a href="SetTopBoxDetails.jsp">Add a STB</a>
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
                <%
            MainLogic ml=new MainLogic();
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("Search"))
            {
            	STB_Inventory s = m1.viewSTB_Inventory(request.getParameter("inventory_id"));
            %>
                <div class="innerListItem">
                    <h3>ID: </h3><%= s.getStb_inventory_id() %>
                    <h3>Type: </h3><%= s.getStb_type() %>
                    <h3>Serial Number: </h3><%= s.getStb_serial_number() %>
                    <h3>MAC ID: </h3><%= s.getStb_mac_id() %>
                    <h3>Remote Asset ID: </h3><%= s.getRemote_asset_id() %>
                    <h3>Dish Asset ID: </h3><%= s.getDish_asset_id() %>
                    <h3>Status: </h3><%= s.getStatus() %>
                </div>
                <% } %>
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