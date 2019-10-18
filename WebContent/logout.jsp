<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="container.html" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta http-equiv="Refresh" content="1;url=login.jsp">
    <link rel="stylesheet" href="style.css"> 
    <title>Logout</title>
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
           
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
        	 <div class="errorMsg">
                <h1>Logging out<h1>
                <% ServletContext sc=request.getServletContext();
            	HttpSession sess=(HttpSession) sc.getAttribute("session"); 
            	sess.invalidate(); 
            	%>
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