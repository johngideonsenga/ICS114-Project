<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> IICS Borrowing System | Borrowers List</title>
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
        <%@include file='templates/header.html'%>
        <br/>
        <div>
            <table id="table">
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Student Number</th>
                        <th>Last Name</th>
                        <th>First Name</th>
                        <th>Section</th>
                        <th>Room</th>
                        <th>Subject</th>
                        <th>Time Borrowed</th>
                        <th>Time Returned</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Item 1</td>
                        <td>2015081653</td>
                        <td>Senga</td>
                        <td>John Gideon</td>
                        <td>3ITI</td>
                        <td>RM 52</td>
                        <td>ICS114</td>
                        <td>2018/05/08 10:59</td>
                        <td>2018/05/08 11:59</td>
                        <td><button type="button" data-toggle="modal" data-target="#returnPrompt">Return</button></td>
                    </tr>
                    <tr>
                        <td>Item 2</td>
                        <td>2015081653</td>
                        <td>Senga</td>
                        <td>John Gideon</td>
                        <td>3ITI</td>
                        <td>RM 52</td>
                        <td>ICS114</td>
                        <td>2018/05/08 10:59</td>
                        <td></td>
                        <td><button type="button" data-toggle="modal" data-target="#returnPrompt">Return</button></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
            <input type="button" onClick="location.href='#'" value="Generate a PDF List" /> 
        </div>
        <!--Modals-->
        <%@include file='templates/returnPrompt.html'%>
    </body>
</html>