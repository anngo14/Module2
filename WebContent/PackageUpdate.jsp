<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.Package" %>
<%@ page import="Logic.MainLogic" %>
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
             <%
            MainLogic ml=new MainLogic();
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("editPkg"))
            {
            	Package p = m1.viewChannelPackage(request.getParameter("pkg_id"));
            %>
                <form action="MainServlet" method="post" value ="hidden">
                    ID: <input type="text" name="package_id" value=<%= p.getPackage_id()%> readonly><br>
                    Name: <input type="text" name="package_name"value=<%= p.getPackage_name()%>><br>
                    Category: <input type="text" name="package_category"value=<%= p.getPackage_category()%>> <br>
                    Charging Type: <input type="text" name="package_charging_type"value=<%= p.getPackage_charging_type()%>> <br>
                    Transmission Type: <input type="text" name="package_transmission_type"value=<%= p.getTransmission_type()%>> <br>
                    Cost: <input type="text" name="package_cost"value=<%= p.getPackage_cost()%>> <br>
                    Available From: <input type="text" name="package_available_from"value=<%= p.getPackage_available_from()%>> <br>
                    Available To: <input type="text" name="package_available_to"value=<%= p.getPackage_available_to()%>> <br>
                    Package Default: <input type="text" name="package_default"value=<%= p.getPackage_default()%>> <br>
                    Channel Id: <input type="text" name="channel_id"value=<%= p.getChannel_id()%>><br>
                           
                    <input type="submit" value="Save">
                   <input type="hidden" name="option" value="StbPackage">
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