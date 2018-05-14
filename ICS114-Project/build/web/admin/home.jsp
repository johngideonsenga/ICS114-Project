<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IICS Borrowing System | Home</title>
        <script type="text/javascript" src="../jquery/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="../DataTables/datatables.min.css"/>
        <script type="text/javascript" src="../DataTables/datatables.min.js"></script>
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css"/>
        <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>

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
        <!--Header -->
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

        <!--Modals-->
        <%@include file='templates/editForm.html'%>
        <%@include file='templates/deletePrompt.html'%>
        <%@include file='templates/addForm.html'%>
    </body>
</html>