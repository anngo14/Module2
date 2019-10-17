<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.STB" %>
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
                    ID: <input type="text" name="stb_id" required><br>
                    Select box type: <!--<input type="text" name="stb_type" required><br> -->
                    <select name="stb_type">
                    	<option value="Standard">Standard</option>
                    	<option value="HD">HD</option>
                    	<option value="HD+">HD+</option>
                    	<option value="IPTV">IPTV</option>
                    </select><br>
                    Features: <input type="text" name="stb_features" required> <br>
                    Length: <input type="text" name="stb_length" required> <br>
                    Breadth: <input type="text" name="stb_breadth" required> <br>
                    Width: <input type="text" name="stb_width" required> <br>
                    Price: <input type="text" name="stb_price" required> <br>
                    Installation charge: <input type="text" name="stb_installation_charges" required> <br>
                    Upgrade charge: <input type="text" name="stb_upgradation_charge" required> <br>
                    Discount: <input type="text" name="stb_discount" required> <br>
                    Billing type: <input type="text" name="stb_billing_type" required> <br>
                    Refundable deposit amount: <input type="text" name="stb_refundable_deposit_amount" required> <br>
                    Inventory ID: <input type="text" name="stb_inventory_id" required> <br>
                           
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