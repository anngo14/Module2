<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.STB, Logic.MainLogic" %>
<%@ include file="container.html" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Set Top Box Management</title>
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
            <a href="login.jsp">Logout</a>
        </div>
    </div>
    <div class="mainConatiner">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Set Top Boxes</h2>
                </div>
                <div class="innerHeadingLink">
                  <% ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session"); 
        	String role = (String) sess.getAttribute("role");
        	if(role.equals("Admin") || role.equals("Operator"))
        	{
        	%>
                    <a href="SetTopBoxDetails.jsp">Add a STB</a>
            <%} %>
                </div>
            </div>
            <div class="searchContainer">
                <form action="MainServlet" method="get">
                    <span>STB ID: </span><input type="text">
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
            if(operation.equals("searchSTB"))
            {
            	STB s = m1.viewSTB(Integer.parseInt(request.getParameter("stb_id")));
            %>
                <div class="innerListItem">
                    <h3>ID: <%= s.getStb_id() %></h3>
                    <h3>Type: <%= s.getStb_type()%></h3>
                    <h3>Features: <%= s.getStb_features() %></h3>
                    <h3>Length: <%= s.getStb_length() %></h3>
                    <h3>Breadth: <%= s.getStb_breadth() %></h3>
                    <h3>Width: <%= s.getStb_width() %></h3>
                    <h3>Price: $<%= s.getStb_price() %></h3>
                    <h3>Installation Charge: $<%= s.getStb_installation_charges() %></h3>
                    <h3>Upgrade Charge: $<%= s.getStb_upgradation_charge() %></h3>
                    <h3>Discount: <%= s.getStb_discount() %> %</h3>
                    <h3>Billing Type: <%= s.getStb_billing_type() %></h3>
                    <h3>Refundable Deposit Amount: $<%= s.getStb_refundable_deposit_amount() %></h3>
                    <h3>Inventory ID: <%= s.getStb_inventory_id() %></h3>
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