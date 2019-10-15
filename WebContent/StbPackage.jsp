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
     ID: <input type="text" name="package_id"><br>
     Name: <input type="text" name="package_name"><br>
     Category: <input type="text" name="package_category"> <br>
     Charging Type: <input type="text" name="package_charging_type"> <br>
     Transmission Type: <input type="text" name="package_transmission_type"> <br>
     Cost: <input type="text" name="package_cost"> <br>
     Available From: <input type="text" name="package_available_from"> <br>
     Available To: <input type="text" name="package_available_to"> <br>
     Package Default: <input type="text" name="package_default"> <br>
     Channel Id: <input type="text" name="channel_id"><br>
    
    <input type="submit" value="Submit">
    <input type="hidden" name="option" value="StbPackage">
</form>
</body>
</html>