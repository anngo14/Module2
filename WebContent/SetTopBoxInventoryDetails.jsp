<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.STB_Inventory" %>
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
            <a href="SetTopBoxInventory.jsp">Set Top Box Inventory</a>
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
                <form action="MainServlet" method="post">
                    <label class="formLabel">Inventory ID: </label><input type="text" name="stb_inventory_id"><br>
                    <label class="formLabel">Type: </label><input type="text" name="stb_type"><br>
                    <label class="formLabel">Serial Number: </label><input type="text" name="stb_serial_number"> <br>
                    <label class="formLabel"> MAC ID: </label><input type="text" name="stb_mac_id"> <br>
                    <label class="formLabel">Remote Asset ID: </label><input type="text" name="remote_asset_id"> <br>
                    <label class="formLabel">Dish Asset ID: </label><input type="text" name="dish_asset_id"> <br>
                    <label class="formLabel">Status: </label><input type="text" name="stb_status"> <br>
                    <label class="formLabel">Retailer ID: </label><input type="text" name="retailer_id"><br> 
                    <input type="submit" value="Submit">
                   <input type="hidden" name="option" value="StbInventory">
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