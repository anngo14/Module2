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
                <td>Enter Channel ID</td>
                <td><input type="text" name="channel_id" /></td><br>
            </tr>
</table>
</form>
    <a href = "StbChannel.jsp"> Create Channel</a><BR>
    <a href ="ChannelView.jsp"> View Channel</a><BR>
    <a href ="StbChannel.jsp"> Update Channel</a><BR>
    <a href ="Delete.jsp">Delete Channel</a><br><br>
    To view all
    <a href ="ChannelViewAll.jsp"> View all Channels</a><BR>
</body>
</html>

</body>
</html>