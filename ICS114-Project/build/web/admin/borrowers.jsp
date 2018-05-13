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
                        <th>Student Number</th>
                        <th>Last Name</th>
                        <th>First Name</th>
                        <th>Section</th>
                        <th>Room</th>
                        <th>Subject</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>2015081653</td>
                        <td>Senga</td>
                        <td>John Gideon</td>
                        <td>3ITI</td>
                        <td>RM 52</td>
                        <td>ICS114</td>
                        <td>2018-05-08</td>
                        <td>07:36 pm</td>
                        <td><a href="#">Return</a></td>
                    </tr>
                    <tr>
                        <td>2015081653</td>
                        <td>Senga</td>
                        <td>John Gideon</td>
                        <td>3ITI</td>
                        <td>RM 52</td>
                        <td>ICS114</td>
                        <td>2018-05-08</td>
                        <td>07:36 pm</td>
                        <td><a href="#">Return</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div>
            <input type="button" onClick="location.href='#'" value="Generate a PDF List" /> 
        </div>
    </body>
</html>