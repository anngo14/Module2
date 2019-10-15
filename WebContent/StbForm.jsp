<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Top Box Management</title>
</head>
<body>
<h1>Manage Set Top Box</h1>
<form action="MainServlet" method="post" value ="hidden">
<table style="with: 60%">

            <tr>
                <td>ID</td>
                <td><input type="text" name="stb_id" /></td>
            </tr>

            <tr>
                <td>Type</td>
                <td><input type="text" name="stb_type" /></td>
            </tr>
            <tr>
                <td>Length</td>
                <td><input type="text" name="stb_length" /></td>
            </tr>
            
            <tr>
                <td>Breath</td>
                <td><input type="text" name="stb_breath" /></td>
            </tr>
            
            <tr>
                <td>Width</td>
                <td><input type="text" name="stb_width" /></td>
            </tr>

            <tr>
                <td>Price</td>
                <td><input type="text" name="stb_price" /></td>
            </tr>
            <tr>
                <td>Installation Charge</td>
                <td><input type="text" name="stb_installation_charges" /></td>
            </tr>
            <tr>
                <td>Discount</td>
                <td><input type="text" name="stb_discount" /></td>
            </tr>
            <tr>
                <td>Billing Type</td>
                <td><input type="text" name="stb_billing_type">
                </td>
            </tr>
            <tr>
                <td>Refundable Deposit Amount</td>
                <td><input type="text" name="stb_refundable_deposit_amount" /></td>
            </tr>

            <tr>
                <td>Inventory ID</td>
                <td><input type="text" name="stb_inventory_id" /></td>
            </tr>
    </table>
    <input type="submit" value="Submit">
    <input type="hidden" name="option" value="STB"> <BR>
    
    
</form>


</body>
</html>
