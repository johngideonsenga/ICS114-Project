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
        <input type="button" onClick='location.href="admin/login.jsp"' value="Login as admin"/>
        <center>
            <div>
                <h1>IICS Borrowing System</h1>
            </div>
        </center>
        <div>
            <table id="table">
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Stock</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Item 1</td>
                        <td>10</td>
                        <td><a href=#>Borrow</a></td>
                    </tr>
                    <tr>
                        <td>Item 2</td>
                        <td>10</td>
                        <td><a href=#>Borrow</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
