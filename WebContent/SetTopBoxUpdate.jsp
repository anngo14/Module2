<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.STB" %>
<%! STB s = session.getAttribute("") %>
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
            <a href="SetTopBox.html">Set Top Box</a>
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
                    ID: <input type="text" name="stb_id" value=<%= s.id %> readonly><br>
                    Select box type: <input type="text" name="stb_type" value=<%= s.id %>><br>
                    Features: <input type="text" name="stb_features" value=<%= s.id %>> <br>
                    Length: <input type="text" name="stb_length" value=<%= s.id %>> <br>
                    Breadth: <input type="text" name="stb_breath" value=<%= s.id %>> <br>
                    Width: <input type="text" name="stb_width" value=<%= s.id %>> <br>
                    Price: <input type="text" name="stb_price" value=<%= s.id %>> <br>
                    Installation charge: <input type="text" name="stb_installation_charges" value=<%= s.id %>> <br>
                    Upgrade charge: <input type="text" name="stb_upgradation_charge" value=<%= s.id %>> <br>
                    Discount: <input type="text" name="stb_discount" value=<%= s.id %>> <br>
                    Billing type: <input type="text" name="stb_billing_type" value=<%= s.id %>> <br>
                    Refundable deposit amount: <input type="text" name="stb_refundable_deposit_amount" value=<%= s.id %>> <br>
                    Inventory ID: <input type="text" name="stb_inventory_id" value=<%= s.id %> readonly> <br>
                           
                    <input type="submit" value="Save">
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