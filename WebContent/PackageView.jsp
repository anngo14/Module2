<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.Package" %>
<%@ page import="Logic.MainLogic" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Package Management</title>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
        <div class="navLinks">
            <a href="SetTopBox.jsp">Set Top Box</a> |
            <a href="Channel.jsp">Channel</a> |
            <a href="Package.jsp">Packages</a> |
            <a href="homepage.jsp">Logout</a>
        </div>
    </div>
    <div class="mainConatiner">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Packages</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="PackageDetails.jsp">Add a Package</a>
                </div>
            </div>
            <div class="searchContainer">
                <form action="MainServlet" method="get">
                    <span>Package ID: </span><input type="text">
                    <input type="submit" value="Search" disabled>
                    <input type="submit" value="Edit" disabled>
                    <input type="submit" value="Delete" disabled>
                </form>
            </div>
            <div class="innerList">
               <%
            MainLogic ml=new MainLogic();
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("searchPkg"))
            {
            	Package p = m1.viewChannelPackage(request.getParameter("pkg_id"));
            %>
                <div class="innerListItem">
                    <h3>ID: </h3><%= p.getPackage_id() %>
                    <h3>Name: </h3><%= p.getPackage_name() %>
                    <h3>Category: </h3><%= p.getPackage_category() %>
                    <h3>Charging Type: </h3><%= p.getPackage_charging_type() %>
                    <h3>Transmission TYpe: </h3><%= p.getTransmission_type() %>
                    <h3>Cost: </h3><%= p.getPackage_cost() %>
                    <h3>Available From: </h3><%= p.getPackage_available_from() %>
                    <h3>Available To: </h3><%= p.getPackage_available_to() %>
                    <h3>Package default: </h3><%= p.getPackage_default() %>
                    <h3>Channel Id</h3><%= p.getChannel_id() %>
                </div>
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