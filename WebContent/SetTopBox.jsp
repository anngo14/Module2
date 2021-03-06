<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Logic.MainLogic" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.STB" %>
<%@ include file="container.html" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Set Top Box Management</title>
     <style>
        .errorMsg{
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
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
            <%  sc=request.getServletContext();
        	 sess=(HttpSession) sc.getAttribute("session"); 
        	 role = (String)sess.getAttribute("role");
        	if(role.equals("Admin") || role.equals("Operator"))
        	{
        	%>
                <form action="MainServlet" method="get">
                    <span>STB ID: </span><input type="text" name="stb_id" maxlength="4" onkeypress="return (event.charCode >=48 && event.charCode <=57)">
                    <input type="submit" name="Operation" value="searchSTB">
                    <input type="submit" name="Operation" value="editSTB">
                    <input type="submit" name="Operation" value="deleteSTB">
                </form>
               <%} else if(role.equals("Customer") || role.equals("Retailer") ){ %>
                 <form action="MainServlet" method="get">
                    <span>STB ID: </span><input type="text" name="stb_id" maxlength="4" onkeypress="return (event.charCode >=48 && event.charCode <=57)">
                    <input type="submit" name="Operation" value="searchSTB">
                </form>
                <%} %>
            </div>
            <div class="innerList">
            <%
            MainLogic ml=new MainLogic();
             sc=request.getServletContext();
        	 sess=(HttpSession) sc.getAttribute("session");
			//String operation=(String)sess.getAttribute("operation");
			session.setAttribute("operation", "");
			String operation= session.getAttribute("operation").toString();
            if(operation.equals("") || operation.equals("viewAll") || operation ==null)
            {
            ArrayList<STB> result=ml.viewAllSTB();
            for(int i=0;i<result.size();i++)
            {
    			ArrayList<String> features = ml.viewAllFeatures(result.get(i).getStb_id());

            %>
                <div class="innerListItem">
                    <h3>ID: <%=result.get(i).getStb_id() %></h3>
                    <h3>Type: <%=result.get(i).getStb_type() %></h3>
                    <h3>Features: <%for(int j = 0; j < features.size(); j++) { %>
                    <%= features.get(j) + " "%> <% } %></h3>
                    <h3>Length: <%=result.get(i).getStb_length() %></h3>
                    <h3>Breadth: <%=result.get(i).getStb_breadth() %></h3>
                    <h3>Width: <%=result.get(i).getStb_width() %></h3>
                    <h3>Price: $<%=result.get(i).getStb_price() %></h3>
                    <h3>Installation Charge: $<%=result.get(i).getStb_installation_charges() %></h3>
                    <h3>Upgrade Charge: $<%=result.get(i).getStb_upgradation_charge() %></h3>
                    <h3>Discount: <%=result.get(i).getStb_discount() %> %</h3>
                    <h3>Billing Type: <%=result.get(i).getStb_billing_type() %></h3>
                    <h3>Refundable Deposit Amount: $<%=result.get(i).getStb_refundable_deposit_amount() %></h3>
                    <h3>Inventory ID:<%=result.get(i).getStb_inventory_id() %> </h3>
                </div>
            <%}}else{ 
            	STB stb=(STB)sess.getAttribute("stb");
			%>
            <div class="innerListItem">
                    <h3>ID: <%=stb.getStb_id() %></h3>
                    <h3>Type: <%=stb.getStb_type() %></h3>
                    <h3>Features: <%=stb.getStb_features() %></h3>
                    <h3>Length: <%=stb.getStb_length() %></h3>
                    <h3>Breadth: <%=stb.getStb_breadth() %></h3>
                    <h3>Width: <%=stb.getStb_width() %></h3>
                    <h3>Price: <%=stb.getStb_price() %></h3>
                    <h3>Installation Charge: <%=stb.getStb_installation_charges() %></h3>
                    <h3>Upgrade Charge: <%=stb.getStb_upgradation_charge() %></h3>
                    <h3>Discount: <%=stb.getStb_discount() %></h3>
                    <h3>Billing Type: <%=stb.getStb_billing_type() %></h3>
                    <h3>Refundable Deposit Amount: <%=stb.getStb_refundable_deposit_amount() %></h3>
                    <h3>Inventory ID:<%=stb.getStb_inventory_id() %> </h3>
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