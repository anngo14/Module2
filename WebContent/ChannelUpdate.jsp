<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            <%! MainLogic m1 = new MainLogic(); %>
             <%
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
			String operation=(String)sess.getAttribute("operation");
            if(operation.equals("editChannel"))
            {
            	Channel c = m1.viewChannel(Integer.parseInt(request.getParameter("channel_id")));
            %>
                <form action="MainServlet" method="post" value ="hidden">
                    <label class="formLabel">Id: </label><input type="text" name="channel_id" value=<%= c.getChannel_id()%> readonly><br>
                    <label class="formLabel">Name: </label><input type="text" name="channel_name" value=<%= c.getChannel_name()%> required><br>
                    <label class="formLabel">Band: </label><input type="text" name="channel_band"value=<%= c.getChannel_band()%> required> <br>
                    <label class="formLabel">VCF: </label><input type="text" name="channel_vcf"value=<%= c.getChannel_vcf()%> min="40" max="225" required> <br>
                    <label class="formLabel">ACF: </label><input type="text" name="channel_acf"value=<%= c.getChannel_acf()%> min="45" max="230" required> <br>
                    <label class="formLabel">Charge Type: </label><!--  <input type="text" name="channel_chargetype"value= c.getChannel_change_type() required> <br> -->
                    <% if(c.getChannel_change_type().equals("FTA")) {%>
                    <input type="radio" name="channel_chargetype" value="FTA" checked>FTA
                    <input type="radio" name="channel_chargetype" value="Paid">Paid
                    <% }else { %>
                    <input type="radio" name="channel_chargetype" value="FTA">FTA
                    <input type="radio" name="channel_chargetype" value="Paid" checked>Paid
                    <% } %><br>
                    <label class="formLabel">Transmission type:</label> <!-- <input type="text" name="channel_transmission_type"value= c.getTransmission_type() required> <br> -->
                    <% if(c.getTransmission_type().equals("Standard")) {%>
                    <input type="radio" name="channel_transmission_type" value="Standard" checked>Standard
                    <input type="radio" name="channel_transmission_type" value="HD">HD
                    <%}else{ %>
                    <input type="radio" name="channel_transmission_type" value="Standard">Standard
                    <input type="radio" name="channel_transmission_type" value="HD" checked>HD
                    <%} %><br>
                    <label class="formLabel">charge: </label><input type="text" name="channel_change"value=<%= c.getChannel_change()%> required> <br>
                            
                    <input type="submit" value="Save">
                   <input type="hidden" name="option" value="ChannelUpdate">
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