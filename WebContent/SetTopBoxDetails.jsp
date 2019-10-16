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
                    ID: <input type="text" name="stb_id"><br>
                    Select box type: <input type="text" name="stb_type"><br>
                    Features: <input type="text" name="stb_features"> <br>
                    Length: <input type="text" name="stb_length"> <br>
                    Breadth: <input type="text" name="stb_breadth"> <br>
                    Width: <input type="text" name="stb_width"> <br>
                    Price: <input type="text" name="stb_price"> <br>
                    Installation charge: <input type="text" name="stb_installation_charges"> <br>
                    Upgrade charge: <input type="text" name="stb_upgradation_charge"> <br>
                    Discount: <input type="text" name="stb_discount"> <br>
                    Billing type: <input type="text" name="stb_billing_type"> <br>
                    Refundable deposit amount: <input type="text" name="stb_refundable_deposit_amount"> <br>
                    Inventory ID: <input type="text" name="stb_inventory_id"> <br>
                           
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