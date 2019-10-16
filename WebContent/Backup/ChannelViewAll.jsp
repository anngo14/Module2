<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table,th,td {
border : 1px solid black;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table style="with: 60%">

            <tr>
                <th>ID</th>
                 <th>Name</th>
                 <th>Band</th>
                 <th>VCF</th>
                 <th>ACF</th>
                 <th>Charge Type</th>
                 <th>Transmission Type</th>
                 <th>Charge</th>   
                
            </tr>
          <% for( int i=0;i<stb.size();i++){ %>  
          <tr>
          <td> <%=stb.get(i).getID() %></td>
          <td> <%=stb.get(i).getName() %></td>
          <td> <%=stb.get(i).getBand() %></td>
          <td> <%=stb.get(i).getVCF() %></td>
          <td> <%=stb.get(i).getACF() %></td>
          <td> <%=stb.get(i).getChargeType() %></td>
          <td> <%=stb.get(i).getTransmissionType() %></td>
          <td> <%=stb.get(i).geCharge() %></td>
                   
           </tr>
         <% } %> 
    
            
    </table>
</body>
</html>