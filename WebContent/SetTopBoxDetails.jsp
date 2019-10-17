<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.STB" %>
<%@ include file="container.html" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Set Top Box Information</title>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
        <div class="navLinks">
            <a href="SetTopBox.jsp">Set Top Box</a>
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Set Top Box Details</h2>
                </div>
            </div>
            <div class="innerForm">
                <form action="MainServlet" method="post" value ="hidden">
                    <label class="formLabel">ID: </label><input type="text" name="stb_id" required><br>
                    <label class="formLabel">Select box type:</label> <!--<input type="text" name="stb_type" required><br> -->
                    <select name="stb_type">
                    	<option value="Standard">Standard</option>
                    	<option value="HD">HD</option>
                    	<option value="HD+">HD+</option>
                    	<option value="IPTV">IPTV</option>
                    </select><br>
                    <label class="formLabel">Features: </label><input type="text" name="stb_features" required> <br>
                    <label class="formLabel">Length: </label><input type="text" name="stb_length" required> <br>
                    <label class="formLabel">Breadth: </label><input type="text" name="stb_breadth" required> <br>
                    <label class="formLabel">Width: </label><input type="text" name="stb_width" required> <br>
                    <label class="formLabel">Price: </label><input type="text" name="stb_price" required> <br>
                    <label class="formLabel">Installation charge: </label><input type="text" name="stb_installation_charges" required> <br>
                    <label class="formLabel">Upgrade charge: </label><input type="text" name="stb_upgradation_charge" required> <br>
                    <label class="formLabel">Discount: </label><input type="text" name="stb_discount" required> <br>
                    <label class="formLabel">Billing type: </label> <!-- <input type="text" name="stb_billing_type" required> <br> -->
                    <input type="radio" name="stb_billing_type" value="PrePaid"> PrePaid
                    <input type="radio" name="stb_billing_type" value="PostPaid"> PostPaid <br>
                    <label class="formLabel">Refundable deposit amount: </label><input type="text" name="stb_refundable_deposit_amount" required> <br>
                    <label class="formLabel">Inventory ID: </label><input type="text" name="stb_inventory_id" required> <br>
                           
                    <input type="submit" value="Submit">
                   <input type="hidden" name="option" value="STB">
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