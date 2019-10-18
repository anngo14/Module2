<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, Logic.MainLogic" %>
<%@ include file="container.html" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Set Top Box</title>
    <style>
        #featureForm{
            display: none;
            position:absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 40%;
            height: 60%;
            border: 1px solid black;
            overflow-y: scroll;
            -ms-overflow-style: none;
            scrollbar-width: none;
        }
        #featureForm::-webkit-scrollbar{
            display: none;
        }
        .formButtons{
            position: absolute;
            bottom: 0;
            right: 0;
            margin-bottom: 15px;
            margin-right: 15px;
        }
        .existingFeature{
            margin-top: 20px;
        }
        .featureList li{
            margin-left: 40px;
            font-size: 20pt;
        }
    </style>
</head>
<body>
    <div class="navBar">
        <div class="logo">
            <h1>Infinity</h1>
        </div>
    </div>
    <div class="mainContainer">
        <div class="innerContainer">
            <div class="innerHeading">
                <div class="innerHeadingLogo">
                    <h2>Features</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="SetTopBox.jsp">Back to Set Top Box</a>
                </div>
            </div>
            <div class="existingFeature">
                <ul class="featureList">
                	<%! MainLogic m1 = new MainLogic(); %>
                    <%  int id = (int) session.getAttribute("STB_ID"); 
                    	ArrayList<String> features = m1.viewAllFeatures(id);
                    	for(String s: features)
                    	{
                   	%>
                   		<li><%= s %></li>
                    		
                    <% } %>	
                </ul>
            </div>
            <div class="innerListForm">
                <form id="featureForm" action="MainServlet" method="get">
                    <center><h2>Add a Feature</h2></center>
                    <center><input type="submit" name="Operation" value="Save Features"></center>
                </form>
                <div class="formButtons">
                    <button id="addButton">Add Feature</button>
                </div>
            </div>
            
        </div>
    </div>
    <footer>
        <div class="credit">
            <h3>Team 1 &copy;</h3>
        </div>
    </footer>
    <script src="main.js"></script>
</body>
</html>