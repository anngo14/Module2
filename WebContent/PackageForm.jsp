<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Manage Set Top Box</h1>
<form action="MainServlet" method="post" value ="hidden">
<table style="with: 60%">

            <tr>
                <td>ID</td>
                <td><input type="text" name="pacakge_id" /></td>
            </tr>

            <tr>
                <td>Name</td>
                <td><input type="text" name="package_name" /></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><input type="text" name="package_category" /></td>
            </tr>
            
            <tr>
                <td>Charging Type</td>
                <td><input type="text" name="package_charging_type" /></td>
            </tr>
            
            <tr>
                <td>Transmission Type</td>
                <td><input type="text" name="package_transmission_type" /></td>
            </tr>

            <tr>
                <td>Cost</td>
                <td><input type="text" name="package_cost" /></td>
            </tr>
            <tr>
                <td>Available from</td>
                <td><input type="text" name="package_available_from" /></td>
            </tr>
            <tr>
                <td>Available to</td>
                <td><input type="text" name="package_available_to" /></td>
            </tr>
            <tr>
                <td>Package_default</td>
                <td><input type="text" name="package_default">
                </td>
            </tr>
            <tr>
                <td>Channel Id</td>
                <td><input type="text" name="channel_id" /></td>
            </tr>
    </table>
    <input type="submit" value="Submit">
    <input type="hidden" name="option" value="STB"> <BR>
    
    
</form>
</body>
</html>


