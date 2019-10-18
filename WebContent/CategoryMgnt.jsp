<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Category</title>

    <style>
        table {
        	margin-left: 20px;
            width: 95%;
            font: 17px Calibri;
        }
        table, th, td {
            border: solid 1px #DDD;
            border-collapse: collapse;
            padding: 2px 3px;
            text-align: center;
        }
        .innerContainer{
        	position: relative;
        }
    </style>
    <link rel="stylesheet" href="style.css">
    
<%@page import="java.sql.ResultSet"%>
<%@page import="JDBC.JDBCUtility"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ include file="container.html" %>
</head>
<body onload="createTable()">
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
                    <a href="Package.jsp">Back to Packages</a>
                </div>
            </div>
			<div class="innerTable">
				<p><input type="button" id="addRow" value="Add New Row" onclick="addRow()" style="margin-top: 15px"/></p>
	
			    <!--THE CONTAINER WHERE WE'll ADD THE DYNAMIC TABLE-->
			    <div id="cont"></div>
			
			    <p><input type="button" id="bt" value="Submit Data" onclick="submit()" /></p>
		    </div>
		</div>
	</div>
	<footer>
		<div class="credit">
			<h3> Team 1 &copy;</h3>
		</div>
	</footer>
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
     
    //int package_id = (int) session.getAttribute("Package_ID");    
    try{ 
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

			connection = JDBCUtility.getConnection();
			String sql ="SELECT * FROM categories where package_id = ?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, 1234);
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
		                ele.setAttribute('value', '<%= resultSet.getString("category_description")%>');
		                td.appendChild(ele);
		            }
		            if(c == 2) {
		                // CREATE AND ADD TEXTBOX WITH VALUE THAT FEACHED FROM DB
		                var ele = document.createElement('input');
		                ele.setAttribute('type', 'text');
		                ele.setAttribute('value', '<%= resultSet.getInt("max_channel")%>');
		                td.appendChild(ele);
		            }
		            if(c == 3) {
		                // CREATE AND ADD TEXTBOX WITH VALUE THAT FEACHED FROM DB
		                var ele = document.createElement('input');
		                ele.setAttribute('type', 'text');
		                ele.setAttribute('value', '<%= resultSet.getInt("min_channel")%>');
		                td.appendChild(ele);
		            }
		        }
<%
    }
    }catch (Exception exception) {
	exception.printStackTrace();
	}
%>

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