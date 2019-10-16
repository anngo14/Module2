<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.STB" %>
<%@ page import="Logic.MainLogic" %>
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
                    ID: <input type="text" name="stb_id" value=<%= s.getStb_id() %> readonly><br>
                    Select box type: <input type="text" name="stb_type" value=<%= s.getStb_type() %>><br>
                    Features: <input type="text" name="stb_features" value=<%= s.getStb_features() %>> <br>
                    Length: <input type="text" name="stb_length" value=<%= s.getStb_length() %>> <br>
                    Breadth: <input type="text" name="stb_breadth" value=<%= s.getStb_breadth() %>> <br>
                    Width: <input type="text" name="stb_width" value=<%= s.getStb_width() %>> <br>
                    Price: <input type="text" name="stb_price" value=<%= s.getStb_price() %>> <br>
                    Installation charge: <input type="text" name="stb_installation_charges" value=<%= s.getStb_installation_charges() %>> <br>
                    Upgrade charge: <input type="text" name="stb_upgradation_charge" value=<%= s.getStb_upgradation_charge() %>> <br>
                    Discount: <input type="text" name="stb_discount" value=<%= s.getStb_discount() %>> <br>
                    Billing type: <input type="text" name="stb_billing_type" value=<%= s.getStb_billing_type() %>> <br>
                    Refundable deposit amount: <input type="text" name="stb_refundable_deposit_amount" value=<%= s.getStb_refundable_deposit_amount() %>> <br>
                    Inventory ID: <input type="text" name="stb_inventory_id" value=<%=s.getStb_inventory_id() %> readonly> <br>
              
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