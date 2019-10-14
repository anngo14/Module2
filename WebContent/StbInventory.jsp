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
     Inventory ID: <input type="text" name="stb_inventory_id"><br>
     Type: <input type="text" name="stb_type"><br>
     Serial Number: <input type="text" name="stb_serial_number"> <br>
     MAC ID: <input type="text" name="stb_mac_id"> <br>
     Remote Asset ID: <input type="text" name="remote_asset_id"> <br>
     Dish Asset ID: <input type="text" name="dish_asset_id"> <br>
     Status: <input type="text" name="stb_status"> <br>
         
    <input type="submit" value="Submit">
    <input type="hidden" name="option" value="STB">
</form>
</body>
</html>