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
                        <td>
                            <button type="button" data-toggle="modal" data-target="#borrowForm">Borrow</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Item 2</td>
                        <td>10</td>
                        <td>
                            <button type="button" data-toggle="modal" data-target="#borrowForm">Borrow</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!--Modal-->
        <div class="modal fade" id="borrowForm" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" >Borrowers Form</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
                    <form method="POST" action="">
                        <div class="modal-body">
                                <input type="hidden" name="item" value="">
                                <br/>Student Number: <input type="text" pattern="[0-9]{10,10}" required>
                                <br/>Last Name: <input type="text" pattern="[A-Za-z ]{1,35}" required>
                                <br/>First Name: <input type="text" pattern="[A-Za-z ]{1,35}" required>
                                <br/>Section: <input type="text" required>
                                <br/>Room: <input type="text" required>
                                <br/>Subject: <input type="text" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-primary" value="Submit"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
