<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="MainServlet" method="post" value ="hidden">
     ID: <input type="text" name="stb_id"><br>
     Select box type: <input type="text" name="stb_type"><br>
     Features: <input type="text" name="stb_features"> <br>
     Length: <input type="text" name="stb_length"> <br>
     Breath: <input type="text" name="stb_breath"> <br>
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




</body>
</html>