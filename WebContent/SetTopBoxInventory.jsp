<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.STB_Inventory" %>
<%@ page import="Logic.MainLogic" %>
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
                    <h2>Set Top Box Inventory</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="SetTopBoxDetails.jsp">Add a STB</a>
                </div>
            </div>
            <div class="searchContainer">
                <form action="MainServlet" method="get">
                    <span>STB ID: </span><input type="text" name="inventory_id">
                    <input type="submit" value="Search">
                    <input type="submit" value="Edit">
                    <input type="submit" value="Delete">
                </form>
            </div>
            <div class="innerList">
            <%
            MainLogic ml=new MainLogic();
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			//String operation=(String)sess.getAttribute("operation");
			session.setAttribute("operation", "");
            if(session.getAttribute("operation").equals("") || session.getAttribute("operation").equals("viewAll") || session.getAttribute("operation") ==null)
            {
            ArrayList<STB_Inventory> result=ml.viewAllSTB_Inventory();
            for(int i=0;i<result.size();i++)
            {
            %>
                <div class="innerListItem">
                    <h3>ID: <%=result.get(i).getStb_inventory_id() %> </h3>
                    <h3>Type: <%=result.get(i).getStb_type() %> </h3>
                    <h3>Serial Number: <%=result.get(i).getStb_serial_number() %></h3>
                    <h3>MAC ID: <%=result.get(i).getStb_mac_id() %></h3>
                    <h3>Remote Asset ID: <%=result.get(i).getRemote_asset_id() %></h3>
                    <h3>Dish Asset ID: <%=result.get(i).getDish_asset_id() %></h3>
                    <h3>Status: <%=result.get(i).getStatus() %></h3>
                </div>
            <%}}else{ 
            	STB_Inventory stbInventory=(STB_Inventory)sess.getAttribute("stbInventory");
			%>
			<div class="innerListItem">
                   <h3>ID: <%=stbInventory.getStb_inventory_id() %> </h3>
                    <h3>Type: <%=stbInventory.getStb_type() %> </h3>
                    <h3>Serial Number: <%=stbInventory.getStb_serial_number() %></h3>
                    <h3>MAC ID: <%=stbInventory.getStb_mac_id() %></h3>
                    <h3>Remote Asset ID: <%=stbInventory.getRemote_asset_id() %></h3>
                    <h3>Dish Asset ID: <%=stbInventory.getDish_asset_id() %></h3>
                    <h3>Status: <%=stbInventory.getStatus() %></h3>
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