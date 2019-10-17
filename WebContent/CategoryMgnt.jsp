<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Category</title>

    <style>
        table {
            width: 70%;
            font: 17px Calibri;
        }
        table, th, td {
            border: solid 1px #DDD;
            border-collapse: collapse;
            padding: 2px 3px;
            text-align: center;
        }
    </style>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
</head>
<body onload="createTable()">

	<p>
        <input type="button" id="addRow" value="Add New Row" onclick="addRow()" />
    </p>

    <!--THE CONTAINER WHERE WE'll ADD THE DYNAMIC TABLE-->
    <div id="cont"></div>

    <p><input type="button" id="bt" value="Submit Data" onclick="submit()" /></p>
</body>

<script>
    // ARRAY FOR HEADER.
    var arrHead = new Array();
    arrHead = ['', 'Category Name', 'Max', 'Min'];      // SIMPLY ADD OR REMOVE VALUES IN THE ARRAY FOR TABLE HEADERS.

    // FIRST CREATE A TABLE STRUCTURE BY ADDING A FEW HEADERS AND
    // ADD THE TABLE TO THE WEB PAGE.
    function createTable() {
    	
        var table = document.createElement('table');
        table.setAttribute('id', 'table');            // SET THE TABLE ID.

        var tr = table.insertRow(-1);

        for (var h = 0; h < arrHead.length; h++) {
            var th = document.createElement('th');          // TABLE HEADER.
            th.innerHTML = arrHead[h];
            tr.appendChild(th);
        }

        var div = document.getElementById('cont');
        div.appendChild(table);    // ADD THE TABLE TO YOUR WEB PAGE.
        
        
        //GET DATA FROM DB
        var tab = document.getElementById('table');
<%
      //String id = request.getParameter("userId");
        String driverName = "oracle.jdbc.driver.OracleDriver";
        String connectionUrl = "jdbc:oracle:thin:@localhost:1521:";
        String dbName = "xe";
        String userId = "system";
        String password = "12345";
        
    try{ 
        Class.forName(driverName);
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;


			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
			statement=connection.createStatement();
			String sql ="SELECT * FROM category";
			
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
%>
				//ADD NEW ROW
		        var rowCnt = tab.rows.length;        // GET TABLE ROW COUNT.
		        var tr = tab.insertRow(rowCnt);      // TABLE ROW.
		        tr = tab.insertRow(rowCnt);
				
		        for (var c = 0; c < arrHead.length; c++) {
		            var td = document.createElement('td');          // TABLE DEFINITION.
		            td = tr.insertCell(c);

		            if (c == 0) {           // FIRST COLUMN.
		                // ADD A BUTTON.
		                var button = document.createElement('input');

		                // SET INPUT ATTRIBUTE.
		                button.setAttribute('type', 'button');
		                button.setAttribute('value', 'Remove');

		                // ADD THE BUTTON's 'onclick' EVENT.
		                button.setAttribute('onclick', 'removeRow(this)');

		                td.appendChild(button);
		            }
		            if(c == 1) {
		                // CREATE AND ADD TEXTBOX WITH VALUE THAT FEACHED FROM DB
		                var ele = document.createElement('input');
		                ele.setAttribute('type', 'text');
		                ele.setAttribute('value', '<%= resultSet.getString("name")%>');
		                td.appendChild(ele);
		            }
		            if(c == 2) {
		                // CREATE AND ADD TEXTBOX WITH VALUE THAT FEACHED FROM DB
		                var ele = document.createElement('input');
		                ele.setAttribute('type', 'text');
		                ele.setAttribute('value', '<%= resultSet.getInt("max")%>');
		                td.appendChild(ele);
		            }
		            if(c == 3) {
		                // CREATE AND ADD TEXTBOX WITH VALUE THAT FEACHED FROM DB
		                var ele = document.createElement('input');
		                ele.setAttribute('type', 'text');
		                ele.setAttribute('value', '<%= resultSet.getInt("min")%>');
		                td.appendChild(ele);
		            }
		        }
<%
    }
    }catch (Exception exception) {
	exception.printStackTrace();
	}
%>
    }

    // ADD A NEW ROW TO THE TABLE.s
    function addRow() {
        var tab = document.getElementById('table');

        var rowCnt = tab.rows.length;        // GET TABLE ROW COUNT.
        var tr = tab.insertRow(rowCnt);      // TABLE ROW.
        tr = tab.insertRow(rowCnt);

        for (var c = 0; c < arrHead.length; c++) {
            var td = document.createElement('td');          // TABLE DEFINITION.
            td = tr.insertCell(c);

            if (c == 0) {           // FIRST COLUMN.
                // ADD A BUTTON.
                var button = document.createElement('input');

                // SET INPUT ATTRIBUTE.
                button.setAttribute('type', 'button');
                button.setAttribute('value', 'Remove');

                // ADD THE BUTTON's 'onclick' EVENT.
                button.setAttribute('onclick', 'removeRow(this)');

                td.appendChild(button);
            }
            else {
                // CREATE AND ADD TEXTBOX IN EACH CELL.
                var ele = document.createElement('input');
                ele.setAttribute('type', 'text');
                ele.setAttribute('value', '');

                td.appendChild(ele);
            }
        }
    }

    // DELETE TABLE ROW.
    function removeRow(oButton) {
        var tab = document.getElementById('table');
        tab.deleteRow(oButton.parentNode.parentNode.rowIndex);       // BUTTON -> TD -> TR.
    }

    // EXTRACT AND SUBMIT TABLE DATA.
    function submit() {
        var myTab = document.getElementById('table');
        var values = new Array();

        // LOOP THROUGH EACH ROW OF THE TABLE.
        for (row = 1; row < myTab.rows.length - 1; row++) {
            for (c = 0; c < myTab.rows[row].cells.length; c++) {   // EACH CELL IN A ROW.

                var element = myTab.rows.item(row).cells[c];
                if (element.childNodes[0].getAttribute('type') == 'text') {
                    values.push("'" + element.childNodes[0].value + "'");
                }
            }
        }
        
        // SHOW THE RESULT IN THE CONSOLE WINDOW.
        console.log(values);
    }
</script>
</html>