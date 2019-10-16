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
                    <h2>Packages</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="PackageDetails.html">Add a Package</a>
                </div>
            </div>
            <div class="searchContainer">
                <form action="MainServlet" method="get">
                    <span>Package ID: </span><input type="text" name="pkg_id">
                    <input type="submit" name="operation" value="searchPkg">
                    <input type="submit" name="operation" value="editPkg">
                    <input type="submit" name="operation" value="deletePkg">
                </form>
            </div>
            <div class="innerList">
            <%
            MainLogic ml=new MainLogic();
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("") || operation.equals("viewAll") || operation ==null)
            {
            ArrayList<Package> result=ml.viewChannelPackage();
            for(int i=0;i<result.size();i++)
            {%>
                <div class="innerListItem">
                    <h3>ID: <%=result.get(i).getPackage_id() %></h3>
                    <h3>Name: <%=result.get(i).getPackage_name() %> </h3>
                    <h3>Category: <%=result.get(i).getPackage_category() %></h3>
                    <h3>Charging Type: <%=result.get(i).getPackage_charging_type() %></h3>
                    <h3>Transmission Type: <%=result.get(i).getTransmission_type() %></h3>
                    <h3>Cost: <%=result.get(i).getPackage_cost() %></h3>
                    <h3>Available From: <%=result.get(i).getPackage_available_from() %></h3>
                    <h3>Available To: <%=result.get(i).getPackage_available_to() %></h3>
                    <h3>Package default: <%=result.get(i).getPackage_available_to() %></h3>
                    <h3>Channel Id : <%=result.get(i).getChannel_id() %></h3>
                </div>
             <% } }else{ 
            	Package pkg=(Package)sess.getAttribute("pkg");
            	%>
            	<div class="innerListItem">
                    <h3>ID: <%=pkg.getPackage_id() %></h3>
                    <h3>Name: <%=pkg.getPackage_name() %> </h3>
                    <h3>Category: <%=pkg.getPackage_category() %></h3>
                    <h3>Charging Type: <%=pkg.getPackage_charging_type() %></h3>
                    <h3>Transmission Type: <%=pkg.getTransmission_type() %></h3>
                    <h3>Cost: <%=pkg.getPackage_cost() %></h3>
                    <h3>Available From: <%=pkg.getPackage_available_from() %></h3>
                    <h3>Available To: <%=pkg.getPackage_available_to() %></h3>
                    <h3>Package default: <%=pkg.getPackage_available_to() %></h3>
                    <h3>Channel Id : <%=pkg.getChannel_id() %></h3>
                </div>
                <%} %>
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