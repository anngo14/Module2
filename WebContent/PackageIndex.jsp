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
                <td>Enter Package ID</td>
                <td><input type="text" name="pacakge_id" /></td><br>
            </tr>
</table>
</form>
    <input type="hidden" name="option" value="STB"> <BR>
    <a href = "PackageForm.jsp"> Create Package</a><BR>
    <a href ="PackageView.jsp"> View Package</a><BR>
    <a href ="PackageForm.jsp"> Update Package</a><BR>
    <a href ="Delete.jsp">Delete Package</a><br><br>
    To view all 
    <a href ="PacakgeViewAll.jsp"> viewAll Packages</a><BR>
</body>
</html>

