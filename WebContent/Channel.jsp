<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="POJO.Channel" %>
<%@ page import="Logic.MainLogic" %>

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
            <a href="homepage.jsp">Logout</a>
        </div>
    </div>
    <div class="mainConatiner">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Channels</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="ChannelDetails.jsp">Add a Channel</a>
                </div>
            </div>
            <div class="searchContainer">
                <form action="MainServlet" method="get">
                    <span>Channel ID: </span><input type="text" name="channel_id">
                    <input type="submit" value="searchChannel">
                    <input type="submit" value="editChannel">
                    <input type="submit" value="deleteChannel">
                </form>
            </div>
            <div class="innerList">
            <%
            MainLogic ml=new MainLogic();
            ServletContext sc=request.getServletContext();
        	HttpSession sess=(HttpSession) sc.getAttribute("session");
        	session.setAttribute("operation", "");
			String operation= session.getAttribute("operation").toString();
            if(operation.equals("") || operation.equals("viewAll") || operation ==null)
            {
            ArrayList<Channel> result=ml.viewAllChannel();
            for(int i=0;i<result.size();i++)
            {
            %>
                <div class="innerListItem">
                    <h3>ID: <%=result.get(i).getChannel_id() %></h3>
                    <h3>Name: <%=result.get(i).getChannel_id() %></h3> 
                    <h3>Band: <%=result.get(i).getChannel_id() %></h3> 
                    <h3>VCF: <%=result.get(i).getChannel_id() %></h3> 
                    <h3>ACF: <%=result.get(i).getChannel_id() %></h3> 
                    <h3>Charge Type: <%=result.get(i).getChannel_id() %></h3> 
                    <h3>Transmission Type: <%=result.get(i).getChannel_id() %></h3> 
                    <h3>Charge: <%=result.get(i).getChannel_id() %></h3> 
                </div>
            <%}}else{ 
            	Channel channel=(Channel)sess.getAttribute("channel");
			%>
				<div class="innerListItem">
                    <h3>ID: <%=channel.getChannel_id() %></h3>
                    <h3>Name: <%=channel.getChannel_id() %></h3> 
                    <h3>Band: <%=channel.getChannel_id() %></h3> 
                    <h3>VCF: <%=channel.getChannel_id() %></h3> 
                    <h3>ACF: <%=channel.getChannel_id() %></h3> 
                    <h3>Charge Type: <%=channel.getChannel_id() %></h3> 
                    <h3>Transmission Type: <%=channel.getChannel_id() %></h3> 
                    <h3>Charge: <%=channel.getChannel_id() %></h3> 
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