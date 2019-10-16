<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.STB, Logic.MainLogic" %>
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
            <a href="homepage.jsp">Logout</a>
        </div>
    </div>
    <div class="mainConatiner">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Set Top Boxes</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="SetTopBoxDetails.html">Add a STB</a>
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
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("searchSTB"))
            {
            	STB s = m1.viewSTB(Integer.parseInt(request.getParameter("stb_id")));
            %>
                <div class="innerListItem">
                    <h3>ID: </h3><%= s.getStb_id() %>
                    <h3>Features: </h3><%= s.getStb_features() %>
                    <h4>Length: </h4><%= s.getStb_length() %>
                    <h4>Breadth: </h4><%= s.getStb_breadth() %>
                    <h4>Width: </h4><%= s.getStb_width() %>
                    <h3>Price: </h3><%= s.getStb_price() %>
                    <h3>Installation Charge: </h3><%= s.getStb_installation_charges() %>
                    <h3>Upgrade Charge: </h3><%= s.getStb_upgradation_charge() %>
                    <h3>Discount: </h3><%= s.getStb_discount() %>
                    <h3>Billing Type: </h3><%= s.getStb_billing_type() %>
                    <h3>Refundable Deposit Amount: </h3><%= s.getStb_refundable_deposit_amount() %>
                    <h3>Inventory ID: </h3><%= s.getStb_inventory_id() %>
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