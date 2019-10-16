<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Features</h1>
      <form name = "Feature List" action = "MainServlet" method = "POST">
         <input type = "checkbox" name = "Multilingual channel guide" checked = "checked" /> Multilingual channel guide
         <br>
         <input type = "checkbox" name = "genre wise channel guide" checked = "checked" /> Genre wise channel guide
         <br>
         <input type = "checkbox" name = "live recording" checked = "checked" /> Live recording
         <br>
         <input type = "checkbox" name = "scheduled recording" checked = "checked" /> Scheduled recording 
         <br>
         <input type = "checkbox" name = "pause and play" checked = "checked" /> Pause & Play
         <br>
         <input type = "checkbox" name = "rewind/forward" checked = "checked" /> Eewind / Forward
         <br>
         <input type = "checkbox" name = "slow motion" checked = "checked" /> Slow motion 
         <br>
         <input type = "checkbox" name = "child lock" checked = "checked" /> Child lock 
         <br>
         <input type = "checkbox" name = "preview screen" checked = "checked" /> Preview screen
         <br>
         <input type = "checkbox" name = "program reminder" checked = "checked" /> Program reminder      
         <br>                    
         <button type="button" onclick="">Add Item</button>
         <br>
         <br>
         <input type = "submit" value = "Submit" />       
      </form>
      

</body>
</html>