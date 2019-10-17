<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="container.html" %>
     <% ServletContext sc=request.getServletContext();
        HttpSession sess=(HttpSession) sc.getAttribute("session");
       /* if(sess.getAttribute("role") == null || sess.getAttribute("role").equals(""))
        {
        	response.sendRedirect("login.jsp");
        }*/
        if(session.getAttribute("role") == null || session.getAttribute("role").equals(""))
        {
        	response.sendRedirect("login.jsp");
        }
        %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css"> 
    <title>Dashboard</title>
    <style>
    	.homeImage{
    		position: absolute;
    		top: 50%;
    		left: 50%;
    		transform: translate(-50%, -50%);
    	}
    	.innerContainer h1{
    		margin-top: 20px;
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
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
        	<center><h1>Welcome to Infinity Portal</h1></center>
        	<div class="homeImage">
        		<img src="logo.png">
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