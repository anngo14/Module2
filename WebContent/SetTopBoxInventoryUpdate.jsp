<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.STB_Inventory" %>
<%@ page import="Logic.MainLogic" %>
<%@ include file="container.html" %>

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
            <a href="SetTopBoxInventory.jsp">STB Inventory</a>
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
            <%! MainLogic m1 = new MainLogic();
           	%>
            <%
        		int inventory_id = (int) session.getAttribute("STB_Inventory_ID");
                STB_Inventory s = m1.viewSTB_Inventory(inventory_id);
            %>
                <form action="MainServlet" method="post">
                    <label class="formLabel">Inventory ID: </label><input type="text" name="stb_inventory_id" value=<%= s.getStb_inventory_id()%> readonly><br>
                    <label class="formLabel">Type: </label><input type="text" name="stb_type" value=<%= s.getStb_type()%>><br>
                    <label class="formLabel">Serial Number: </label><input type="text" name="stb_serial_number" value=<%= s.getStb_serial_number()%>> <br>
                    <label class="formLabel">MAC ID: </label><input type="text" name="stb_mac_id" value=<%= s.getStb_mac_id()%>> <br>
                    <label class="formLabel">Remote Asset ID: </label><input type="text" name="remote_asset_id" value=<%= s.getRemote_asset_id()%>> <br>
                    <label class="formLabel">Dish Asset ID: </label><input type="text" name="dish_asset_id" value=<%= s.getDish_asset_id()%>> <br>
                    <label class="formLabel">Status: </label><input type="text" name="stb_status" value=<%= s.getStatus() %>> <br>
                    <label class="formLabel">Retailer ID: </label><input type="text" name="retailer_id" value=<%= s.getRetailer_id() %> readonly><br>          
                    <input type="submit" value="Submit">
                   <input type="hidden" name="option" value="StbInventoryUpdate">
               </form>
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