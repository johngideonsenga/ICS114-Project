<%-- 
    Document   : index
    Created on : May 13, 2018, 5:51:10 PM
    Author     : Jonjie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IICS Borrowing System</title>
        <script type="text/javascript" src="jquery/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
        <script type="text/javascript" src="DataTables/datatables.min.js"></script>
        <script type="text/javascript">
			$(document).ready( function (){
				$('#table').DataTable({
					"columnDefs": [
                        {"className": "dt-center", "targets": "_all"}
                    ]
				});
			});
		</script>
    </head>
    <body>
        <center>
            <div>
                <h1>IICS Borrowing System</h1>
            </div>
            <div>
                <table id="table" class="display">
                    <thead>
                        <tr>
                            <th>Item</th>
                            <th>Stock</th>
                            <th>Item</th>
                            <th>Stock</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Item 1</td>
                            <td>10</td>
                            <td>Item 1</td>
                            <td>10</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </center> 
    </body>
</html>
