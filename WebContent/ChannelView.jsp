<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.Channel" %>
<%@ page import="Logic.MainLogic" %>
<%@ include file="container.html" %>

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
            <a href="SetTopBox.jsp">Set Top Box</a> |
            <a href="Channel.jsp">Channel</a> |
            <a href="Package.jsp">Packages</a> |
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
    <div class="mainConatiner">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Channels</h2>
                </div>
                <div class="innerHeadingLink">
                    <% ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session"); 
        	String role = (String) sess.getAttribute("role");
        	if(role.equals("Admin") || role.equals("Operator"))
        	{
        	%>
                    <a href="ChannelDetails.jsp">Add a Channel</a>
                    <% } %>
                </div>
            </div>
            <div class="searchContainer">
                <form action="MainServlet" method="get">
                    <span>Channel ID: </span><input type="text">
                    <input type="submit" value="Search" disabled>
                    <input type="submit" value="Edit" disabled>
                    <input type="submit" value="Delete" disabled>
                </form>
            </div>
            <div class="innerList">
            <%! MainLogic m1 = new MainLogic(); %>
               <%
             sc=request.getServletContext();
        	 sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("searchChannel"))
            {
            	Channel c = m1.viewChannel(Integer.parseInt(request.getParameter("channel_id")));
            %>
                <div class="innerListItem">
                    <h3>ID: <%= c.getChannel_id() %></h3>
                    <h3>Name: <%= c.getChannel_name() %></h3> 
                    <h3>Band: <%= c.getChannel_band() %></h3> 
                    <h3>VCF: <%= c.getChannel_vcf() %> Mhz</h3> 
                    <h3>ACF: <%= c.getChannel_acf() %> Mhz</h3> 
                    <h3>Charge Type: <%= c.getChannel_change_type() %></h3> 
                    <h3>Transmission Type:  <%= c.getTransmission_type() %></h3>
                    <h3>Charge: <%= c.getChannel_change() %></h3> 
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