<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
                 <th>Category</th>
                 <th>Charging Type</th>
                 <th>Transmission Type</th>
                 <th>Cost</th>
                 <th>Available from</th>
                 <th>Available to</th>
                 <th>Package default</th>
                 <th>Channel Id</th>
                     
                
            </tr>
          <% for( int i=0;i<package.size();i++){ %>  
          <tr>
          <td> <%=package.get(i).getID() %></td>
          <td> <%=package.get(i).getName() %></td>
          <td> <%=package.get(i).getCategory() %></td>
          <td> <%=package.get(i).getChargingType() %></td>
          <td> <%=package.get(i).getTransmissionType() %></td>
          <td> <%=package.get(i).getCost() %></td>
          <td> <%=package.get(i).getAvailableFrom() %></td>
          <td> <%=package.get(i).getAvailableTo() %></td>
          <td> <%=package.get(i).getPackageDefault() %></td>
          <td> <%=package.get(i).getChannelId() %></td>
          
           </tr>
         <% } %> 
          
         
            
    </table>
    
</body>
</html>
