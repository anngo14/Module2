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
                 <th>Type</th>
                 <th>Length</th>
                 <th>Breath</th>
                 <th>Width</th>
                 <th>Price</th>
                 <th>Installation Charge</th>
                 <th>Discount</th>
                 <th>Billing Type</th>
                 <th>Refundable Deposit Amount</th>
                 <th>Inventory ID</th>        
                
            </tr>
          <% for( int i=0;i<stb.size();i++){ %>  
          <tr>
          <td> <%=stb.get(i).getID() %></td>
          <td> <%=stb.get(i).getType() %></td>
          <td> <%=stb.get(i).getLength() %></td>
          <td> <%=stb.get(i).getBreath() %></td>
          <td> <%=stb.get(i).getWidth() %></td>
          <td> <%=stb.get(i).getPrice() %></td>
          <td> <%=stb.get(i).getInstallationCharge() %></td>
          <td> <%=stb.get(i).getDiscount() %></td>
          <td> <%=stb.get(i).getBillingType() %></td>
          <td> <%=stb.get(i).getRefundableDepositAmountt() %></td>
          
           </tr>
         <% } %> 
          
         
            
    </table>
    
</body>
</html>

