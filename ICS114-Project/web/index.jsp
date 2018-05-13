<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IICS Borrowing System</title>
        <script type="text/javascript" src="jquery/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
        <script type="text/javascript" src="DataTables/datatables.min.js"></script>
        <link rel="stylesheet" type="text/css" href="Bootstrap/css/bootstrap.min.css"/>
        <script type="text/javascript" src="Bootstrap/js/bootstrap.min.js"></script>
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
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
                </div>
            
            </div>
        </div>
    </body>
</html>
