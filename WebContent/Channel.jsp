<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.Channel" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Channel Management</title>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
        <div class="navLinks">
            <a href="SetTopBox.html">Set Top Box</a> |
            <a href="Channel.html">Channel</a> |
            <a href="Package.html">Packages</a> |
            <a href="homepage.html">Logout</a>
        </div>
    </div>
    <div class="mainConatiner">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Channels</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="ChannelDetails.html">Add a Channel</a>
                </div>
            </div>
            <div class="searchContainer">
                <form action="MainServlet" method="get">
                    <span>Channel ID: </span><input type="text">
                    <input type="submit" value="Search">
                    <input type="submit" value="Edit">
                    <input type="submit" value="Delete">
                </form>
            </div>
            <div class="innerList">
                <div class="innerListItem">
                    <h3>ID: </h3>
                    <h3>Name: </h3>
                    <h3>Band: </h3>
                    <h3>VCF: </h3>
                    <h3>ACF: </h3>
                    <h3>Charge Type: </h3>
                    <h3>Transmission Type: </h3>
                    <h3>Charge: </h3>
                </div>
                <div class="innerListItem">
                    <h3>ID: </h3>
                    <h3>Name: </h3>
                    <h3>Band: </h3>
                    <h3>VCF: </h3>
                    <h3>ACF: </h3>
                    <h3>Charge Type: </h3>
                    <h3>Transmission Type: </h3>
                    <h3>Charge: </h3>
                </div>
                <div class="innerListItem">
                    <h3>ID: </h3>
                    <h3>Name: </h3>
                    <h3>Band: </h3>
                    <h3>VCF: </h3>
                    <h3>ACF: </h3>
                    <h3>Charge Type: </h3>
                    <h3>Transmission Type: </h3>
                    <h3>Charge: </h3>
                </div>
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