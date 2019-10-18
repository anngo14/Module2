<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.Channel" %>
<%@ include file="container.html" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Channel Information</title>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
        <div class="navLinks">
            <a href="Channel.jsp">Channel</a>
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Channel Details</h2>
                </div>
            </div>
            <div class="innerForm">
                <form action="MainServlet" method="post" value ="hidden">
                    <label class="formLabel">Id: </label><input type="text" name="channel_id" required maxlength="4" onkeypress="return (event.charCode >=48 && event.charCode <=57)"><br>
                    <label class="formLabel">Package Id: </label><input type="text" name="package_id" required maxlength="4" onkeypress="return (event.charCode >=48 && event.charCode <=57)"><br>
                    <label class="formLabel">Name: </label><input type="text" name="channel_name" required><br>
                    <label class="formLabel">Band: </label><input type="text" name="channel_band" required> <br>
                    <label class="formLabel">VCF: </label><input type="text" name="channel_vcf" min="40" max="225" required> <br>
                    <label class="formLabel">ACF: </label><input type="text" name="channel_acf" min="45" max="230" required> <br>
                    <label class="formLabel">Charge Type:</label> <!--  <input type="text" name="channel_chargetype" required> <br> -->
                    <input type="radio" name="channel_chargetype" value="N" checked>FTA
                    <input type="radio" name="channel_chargetype" value="Y">Paid <br>
                    <label class="formLabel">Transmission type:</label> <!--<input type="text" name="channel_transmission_type" required> <br> -->
                    <input type="radio" name="channel_transmission_type" value="Y" checked> Standard
                    <input type="radio" name="channel_transmission_type" value="N"> HD <br>
                    <label class="formLabel">charge: </label> <input type="text" name="channel_change" required maxlength="4" onkeypress="return (event.charCode >=48 && event.charCode <=57)"> <br>
                   	<label class="formLabel">Status: </label> <input type="text" name="channel_status" required> <br>
                    
                            
                    <input type="submit" value="Submit">
                   <input type="hidden" name="option" value="StbChannel">
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