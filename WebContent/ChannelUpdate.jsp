<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="POJO.Channel" %>
<%@ page import="Logic.MainLogic" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Channel Information</title>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
        <div class="navLinks">
            <a href="Channel.jsp">Channel</a>
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Channel Details</h2>
                </div>
            </div>
            <div class="innerForm">
             <%
            MainLogic ml=new MainLogic();
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("editChannel"))
            {
            	Channel c = m1.viewChannel(request.getParameter("channel_id"));
            %>
                <form action="MainServlet" method="post" value ="hidden">
                    Id: <input type="text" name="channel_id" value=<%= c.getChannel_id()%> readonly><br>
                    Name: <input type="text" name="channel_name" value=<%= c.getChannel_name()%>><br>
                    Band: <input type="text" name="channel_band"value=<%= c.getChannel_band()%>> <br>
                    VCF: <input type="text" name="channel_vcf"value=<%= c.getChannel_vcf()%>> <br>
                    ACF: <input type="text" name="channel_acf"value=<%= c.getChannel_acf()%>> <br>
                    Charge Type: <input type="text" name="channel_chargetype"value=<%= c.getChannel_change_type()%>> <br>
                    Transmission type: <input type="text" name="channel_transmission_type"value=<%= c.getTransmission_type()%>> <br>
                    charge: <input type="text" name="channel_change"value=<%= c.getChannel_change()%>> <br>
                            
                    <input type="submit" value="Save">
                   <input type="hidden" name="option" value="StbChannel">
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