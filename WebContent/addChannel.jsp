<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="container.html" %>
<%@ page import="Logic.MainLogic, POJO.Package" %>
<%@ page import="java.util.ArrayList, POJO.Channel" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css"> 
    <title>Add Channels</title>
</head>
<style>
    .headerContainer{
    	position: absolute;
    	left: 0;
    	margin-left: 25px;
    }
    .headerContainer h2{
    	line-height: 50px;
    }
    .availableChannel{
        position: absolute;
        right: 0;
        margin-right: 25px;
        height: 60%;
    }
    .availableChannel h3{
        margin-bottom: 15px;
    }
    #addchannel{
        position: absolute;
        bottom: 0;
        right: 0;
    }
</style>
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
    <div class="mainContainer">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Add Channels</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="Package.jsp">Back to Packages</a>
                </div>
            </div>
            <%! MainLogic ml = new MainLogic(); %>
            <% Package p = ml.viewChannelPackage((int)session.getAttribute("Package_ID")); %>
            <div class="headerContainer">
                    <h2>Transmission Type: <%= p.getTransmission_type() %></h2>
                    <h2>Charging Type: <%= p.getPackage_charging_type() %></h2>
                    <h2>Initial Cost: $<%= p.getPackage_cost() %></h2>
            </div>
            <div class="availableChannel">
                <h3>Available Channels</h3>
                <form action="MainServlet" method="get">
                    <input type="submit" id="addchannel" name="Operation" value="Add Channels">
                    <% ArrayList<Channel> a = ml.getAvailableChannels(p.getTransmission_type(), p.getPackage_charging_type()); 
                       ArrayList<Channel> b = ml.allChannelsInPackage(p.getPackage_id());
                       ArrayList<Channel> c = new ArrayList<Channel>();
                       c.addAll(a);
                   
                       for(Channel channel: a)
                       {
                       		for(Channel ch: b)
                       		{
                       			if(channel.getChannel_id() == ch.getChannel_id()) { %>
                       			<input type="checkbox" name="availablechannel" value=<%=ch.getChannel_id() %> checked><%= ch.getChannel_name() %> <br>	
                       	<% 		c.remove(channel);
                       				
                       			}
                       		}
                       	} for(Channel ch : c) {%>	
                    		<input type="checkbox" name="availablechannel" value=<%=ch.getChannel_id() %>><%= ch.getChannel_name() %> <br>	
                    	<%} %>		
                 
                </form>
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