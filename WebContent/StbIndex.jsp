<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="MainServlet" method="post" value ="hidden">
<table style="with: 60%">

            <tr>
                <td>Enter STB ID</td>
                <td><input type="text" name="stb_id" /></td><br>
            </tr>
</table>
</form>
    <input type="hidden" name="option" value="STB"> <BR>
    <a href = "StbForm.jsp"> Create the setup box</a><BR>
    <a href ="StbView.jsp"> view setup box</a><BR>
    <a href ="StbForm.jsp"> Update setup box</a><BR>
    <a href ="StbDelete.jsp">Delete setup box</a><br><br>
    To view all
    <a href ="StbViewAll.jsp"> viewAll setup box</a><BR>
    
</body>
</html>