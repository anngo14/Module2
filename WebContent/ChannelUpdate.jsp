<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.Channel" %>
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
            <a href="Channel.html">Channel</a>
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
                    Id: <input type="text" name="channel_id" value=<%= %> readonly><br>
                    Name: <input type="text" name="channel_name" value=<%= %>><br>
                    Band: <input type="text" name="channel_band"value=<%= %>> <br>
                    VCF: <input type="text" name="channel_vcf"value=<%= %>> <br>
                    ACF: <input type="text" name="channel_acf"value=<%= %>> <br>
                    Charge Type: <input type="text" name="channel_chargetype"value=<%= %>> <br>
                    Transmission type: <input type="text" name="channel_transmission_type"value=<%= %>> <br>
                    charge: <input type="text" name="channel_change"value=<%= %>> <br>
                            
                    <input type="submit" value="Save">
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