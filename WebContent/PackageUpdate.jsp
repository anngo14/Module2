<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.Package" %>
<%@ page import="Logic.MainLogic" %>
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
            <%! MainLogic m1 = new MainLogic(); %>
             <%
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("editPkg"))
            {
            	Package p = m1.viewChannelPackage(Integer.parseInt(request.getParameter("pkg_id")));
            %>
                <form action="MainServlet" method="post" value ="hidden">
                    <label class="formLabel">ID: </label><input type="text" name="package_id" value=<%= p.getPackage_id()%> readonly><br>
                    <label class="formLabel">Name: </label><input type="text" name="package_name"value=<%= p.getPackage_name()%> required><br>
                    <label class="formLabel">Category: </label><% session.setAttribute("Package_ID", Integer.parseInt(request.getParameter("pkg_id"))); %><a href="category.jsp">Categories</a> <br>
                    <label class="formLabel">Charging Type: </label><!-- <input type="text" name="package_charging_type"value=<%= p.getPackage_charging_type()%> required> <br> -->
                    <%if(p.getPackage_charging_type().equals("Paid")){ %>
                    <input type="radio" name="package_charging_type" value="Paid" checked>Paid
                    <input type="radio" name="package_charging_type" value="FTA">FTA
                    <%}else{ %>
                    <input type="radio" name="package_charging_type" value="Paid">Paid
                    <input type="radio" name="package_charging_type" value="FTA" checked>FTA
                    <% } %> <br>
                    <label class="formLabel">Transmission Type: </label><!-- <input type="text" name="package_transmission_type"value=<%= p.getTransmission_type()%> required> <br> -->
                    <%if(p.getTransmission_type().equals("HD")) { %>
                    <input type="radio" name="package_transmission_type" value="HD" checked>HD
                    <input type="radio" name="package_transmission_type" value="Standard">Standard 
                    <%}else { %>
                    <input type="radio" name="package_transmission_type" value="HD">HD
                    <input type="radio" name="package_transmission_type" value="Standard" checked>Standard 
                    <%} %><br>
                    <label class="formLabel">Cost: </label><input type="text" name="package_cost"value=<%= p.getPackage_cost()%> required> <br>
                    <label class="formLabel">Available From: </label><input type="date" name="package_available_from"value=<%= p.getPackage_available_from()%> required> <br>
                    <label class="formLabel">Available To: </label><input type="date" name="package_available_to"value=<%= p.getPackage_available_to()%> required> <br>
                    <label class="formLabel">Package Default: </label><!-- <input type="text" name="package_default"value=<%= p.getPackage_default()%> required> <br> -->
                    <%if(p.getPackage_default().equals("Y")){ %>
                    <input type="radio" name="package_default" value="Y" checked> Yes
                    <input type="radio" name="package_default" value="N"> No
                    <%}else{ %>
                    <input type="radio" name="package_default" value="Y"> Yes
                    <input type="radio" name="package_default" value="N" checked> No
                    <% } %><br>
                    <label class="formLabel">Add Channels: </label>Add Channels: <a href="addChannel.jsp">Add Channels</a><br>
                    <input type="submit" value="Save">
                   <input type="hidden" name="option" value="StbPackageUpdate">
               </form>
             <% } %>
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