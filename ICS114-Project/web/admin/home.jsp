<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IICS Borrowing System | Home</title>
        <script type="text/javascript" src="../jquery/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="../DataTables/datatables.min.css"/>
        <script type="text/javascript" src="../DataTables/datatables.min.js"></script>
        <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
        <script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>

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
        <%@include file='templates/header.html'%>
        <br/>
        <div>
            <center>
                <button type="button" data-toggle="modal" data-target="#addForm">Add New Item</button>
            </center>
            <table id="table">
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Stock</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Item 1</td>
                        <td>10</td>
                        <td><button type="button" data-toggle="modal" data-target="#editForm">Edit Stock</button></td>
                        <td><button type="button" data-toggle="modal" data-target="#deletePrompt">Delete Item</button></td>
                    </tr>
                    <tr>
                        <td>Item 2</td>
                        <td>10</td>
                        <td><button type="button" data-toggle="modal" data-target="#editForm">Edit Stock</button></td>
                        <td><button type="button" data-toggle="modal" data-target="#deletePrompt">Delete Item</button></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <!--Modal-->
        <div class="modal fade" id="editForm" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" >Edit Item Stock</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
                    <form method="POST" action="">
                        <div class="modal-body">
                            <br/>Item: <input type="text" disabled required>
                            <br/>Quantity: <input type="Number" min='1' required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--Modal-->
        <div class="modal fade" id="deletePrompt" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" >Delete Item</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
                    <form method="POST" action="">
                        <div class="modal-body">
                            Are you sure you want to delete '{item name}'?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                            <button type="submit" class="btn btn-primary">Yes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!--Modal-->
        <div class="modal fade" id="addForm" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" >Add New Item</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                    </div>
                    <form method="POST" action="">
                        <div class="modal-body">
                            <br/>Item: <input type="text" required>
                            <br/>Quantity: <input type="Number" min='1' required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
