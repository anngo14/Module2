<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.STB" %>
<%@ page import="Logic.MainLogic" %>
<%@ include file="container.html" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Set Top Box Information</title>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
        <div class="navLinks">
            <a href="SetTopBox.jsp">Set Top Box</a>
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Set Top Box Details</h2>
                </div>
            </div>
            <div class="innerForm">
            <%! MainLogic m1=new MainLogic(); %>
              <%
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("editSTB"))
            {
            	STB s = m1.viewSTB(Integer.parseInt(request.getParameter("stb_id")));
            %>
                <form action="MainServlet" method="post" value ="hidden">
                    <label class="formLabel">ID: </label><input type="text" name="stb_id" value=<%= s.getStb_id() %> readonly><br>
                    <label class="formLabel">Select box type: </label><!--  <input type="text" name="stb_type" value= s.getStb_type() required><br> -->
                    <select name="stb_type">
                    <% if(s.getStb_type().equals("Standard")){ %>
                    	<option value="Standard" >Standard</option>
                    	<option value="HD">HD</option>
                    	<option value="HD+">HD+</option>
                    	<option value="IPTV">IPTV</option>
                    <% }else if(s.getStb_type().equals("HD")){ %>
                    	<option value="Standard" >Standard</option>
                    	<option value="HD" selected>HD</option>
                    	<option value="HD+">HD+</option>
                    	<option value="IPTV">IPTV</option>
                   	<% }else if(s.getStb_type().equals("HD+")) {%>
                   		<option value="Standard" >Standard</option>
                    	<option value="HD" >HD</option>
                    	<option value="HD+" selected>HD+</option>
                    	<option value="IPTV">IPTV</option>
                    <% }else { %>
                    	<option value="Standard" >Standard</option>
                    	<option value="HD" >HD</option>
                    	<option value="HD+" >HD+</option>
                    	<option value="IPTV" selected>IPTV</option>
                    <% } %>
                    </select><br>
                    <!-- <label class="formLabel">Features: </label><input type="text" name="stb_features" value=<%= s.getStb_features() %> required> <br> -->
                    <label class="formLabel">Features: </label><% session.setAttribute("STB_ID", Integer.parseInt(request.getParameter("stb_id"))); %><a href="features.jsp">Features</a><br>
                    <label class="formLabel">Length: </label><input type="text" name="stb_length" value=<%= s.getStb_length() %> required> <br>
                    <label class="formLabel">Breadth: </label><input type="text" name="stb_breadth" value=<%= s.getStb_breadth() %> required> <br>
                    <label class="formLabel">Width: </label><input type="text" name="stb_width" value=<%= s.getStb_width() %> required> <br>
                    <label class="formLabel">Price: </label><input type="text" name="stb_price" value=<%= s.getStb_price() %> required> <br>
                    <label class="formLabel">Installation charge: </label><input type="text" name="stb_installation_charges" value=<%= s.getStb_installation_charges() %> required> <br>
                    <label class="formLabel">Upgrade charge: </label><input type="text" name="stb_upgradation_charge" value=<%= s.getStb_upgradation_charge() %> required> <br>
                    <label class="formLabel">Discount: </label><input type="text" name="stb_discount" value=<%= s.getStb_discount() %> required> <br>
                    <label class="formLabel">Billing type: </label><!-- </label><input type="text" name="stb_billing_type" value= s.getStb_billing_type()  required> <br> -->
                    <% if(s.getStb_billing_type().equals("PrePaid")) {%>
                    <input type="radio" name="stb_billing_type" value="PrePaid" checked> PrePaid
                    <input type="radio" name="stb_billing_type" value="PostPaid"> PostPaid
                    <% }else{ %>
                    <input type="radio" name="stb_billing_type" value="PrePaid" > PrePaid
                    <input type="radio" name="stb_billing_type" value="PostPaid" checked> PostPaid
                    <% } %> <br>
                    <label class="formLabel">Refundable deposit amount: </label><input type="text" name="stb_refundable_deposit_amount" value=<%= s.getStb_refundable_deposit_amount() %> required> <br>
                    <label class="formLabel">Inventory ID: </label><input type="text" name="stb_inventory_id" value=<%=s.getStb_inventory_id() %> readonly> <br>
              
                    <input type="submit" value="Save">
                    <input type="hidden" name="option" value="STBUpdate">
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