<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.Package" %>
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
            <a href="Package.jsp">Package</a>
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Package Details</h2>
                </div>
            </div>
            <div class="innerForm">
                <form action="MainServlet" method="post" value ="hidden">
                    <label class="formLabel">ID: </label><input type="text" name="package_id" required maxlength="4" onkeypress="return (event.charCode >=48 && event.charCode <=57)"><br>
                    <label class="formLabel">Name: </label><input type="text" name="package_name" required><br>
                    <label class="formLabel">Category: </label><input type="text" name="package_category" required> <br>
                    <label class="formLabel">Charging Type: </label><!-- <input type="text" name="package_charging_type" required> <br> -->
                    <input type="radio" name="package_charging_type" value="Paid" checked>Paid
                    <input type="radio" name="package_charging_type" value="FTA">FTA <br> 
                    <label class="formLabel">Transmission Type: </label><!-- <input type="text" name="package_transmission_type" required> <br> -->
                    <input type="radio" name="package_transmission_type" value="HD" checked>HD
                    <input type="radio" name="package_transmission_type" value="Standard">Standard <br>
                    <label class="formLabel">Cost: </label><input type="text" name="package_cost" required maxlength="4" onkeypress="return (event.charCode >=48 && event.charCode <=57)"> <br>
                    <label class="formLabel">Available From: </label><input type="date" name="package_available_from" required> <br>
                    <label class="formLabel">Available To: </label><input type="date" name="package_available_to" required> <br>
                    <label class="formLabel">Package Default: </label><!-- <input type="text" name="package_default" required> <br> -->
                    <input type="radio" name="package_default" value="Y" checked> Yes
                    <input type="radio" name="package_default" value="N"> No <br>
                           
                    <input type="submit" value="Submit">
                   <input type="hidden" name="option" value="StbPackage">
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