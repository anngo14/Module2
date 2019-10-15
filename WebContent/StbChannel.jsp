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
     Id: <input type="text" name="channel_id"><br>
     Name: <input type="text" name="channel_name"><br>
     Band: <input type="text" name="channel_band"> <br>
     VCF: <input type="text" name="channel_vcf"> <br>
     ACF: <input type="text" name="channel_acf"> <br>
     Charge Type: <input type="text" name="channel_chargetype"> <br>
     Transmission type: <input type="text" name="channel_transmission_type"> <br>
     charge: <input type="text" name="channel_change"> <br>
     
    <input type="submit" value="Submit">
    <input type="hidden" name="option" value="StbChannel">
</form>
    

</body>
</html>