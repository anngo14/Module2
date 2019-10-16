<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.STB_Inventory" %>
<%@ page import="Logic.MainLogic" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Package Information</title>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
        <div class="navLinks">
            <a href="Package.jsp">Package</a>
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Set Top Box Inventory Details</h2>
                </div>
            </div>
            <div class="innerForm">
                <%
            MainLogic ml=new MainLogic();
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("Edit"))
            {
            	STB_Inventory s = m1.viewSTB_Inventory(request.getParameter("inventory_id"));
            %>
                <form action="MainServlet" method="post">
                    Inventory ID: <input type="text" name="stb_inventory_id" value=<%= s.getStb_inventory_id()%> readonly><br>
                    Type: <input type="text" name="stb_type" value=<%= s.getStb_type()%>><br>
                    Serial Number: <input type="text" name="stb_serial_number" value=<%= s.getStb_serial_number()%>> <br>
                    MAC ID: <input type="text" name="stb_mac_id" value=<%= s.getStb_mac_id()%>> <br>
                    Remote Asset ID: <input type="text" name="remote_asset_id" value=<%= s.getRemote_asset_id()%>> <br>
                    Dish Asset ID: <input type="text" name="dish_asset_id" value=<%= s.getDish_asset_id()%>> <br>
                    Status: <input type="text" name="stb_status" value=<%= s.getStatus() %>> <br>
                                
                    <input type="submit" value="Submit">
                   <input type="hidden" name="option" value="StbInventory">
               </form>
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