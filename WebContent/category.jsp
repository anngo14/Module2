<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, Logic.MainLogic, POJO.Category" %>
<%@ include file="container.html" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Package</title>
    <style>
        #categoryForm{
            display: none;
            position:absolute;
            top: 60%;
            left: 70%;
            transform: translate(-70%, -60%);
            width: 40%;
            height: 60%;
            border: 1px solid black;
            overflow-y: scroll;
            -ms-overflow-style: none;
            scrollbar-width: none;
        }
        #categoryForm::-webkit-scrollbar{
            display: none;
        }
        .formButtons{
            position: absolute;
            bottom: 0;
            right: 0;
            margin-bottom: 15px;
            margin-right: 15px;
        }
        .existingCategories{
            margin-top: 20px;
        }
        .categoryList li{
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
                    <h2>Categories</h2>
                </div>
                <div class="innerHeadingLink">
                    <a href="Package.jsp">Back to Package</a>
                </div>
            </div>
            <div class="existingCategories">
                <ul class="categoryList">
                	<li style="list-style:none"><label>Description | Min Channel | Max Channel</label></li>
                  <%! MainLogic m1 = new MainLogic(); %>
                    <%  int id = (int) session.getAttribute("Package_ID"); 
                    	ArrayList<Category> categories = m1.viewAllCategories(id);
                    	for(Category s: categories)
                    	{
                   	%> 
                   		<li><%= s.getCategory_description() + " (" + s.getMin_channel() + ", " + s.getMax_channel() + ")"%></li>
                    		
                    <% } %>	
                </ul>
            </div>
            <div class="innerListForm">
                <form id="categoryForm" action="MainServlet" method="get">
                    <center><h2>Add a Category</h2></center>
                    <center><input type="submit" name="Operation" value="Save Categories"></center>
                </form>
                <div class="formButtons">
                    <button id="addButtonCategory">Add Feature</button>
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