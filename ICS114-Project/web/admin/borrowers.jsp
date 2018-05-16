<%@page import="java.sql.ResultSet"%>
<%@page import="com.logic.service.Borrower"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Borrower borrower = new Borrower();
    ResultSet rs = borrower.getBorrowers();
%>
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
                        {"className": "dt-center", "targets": "_all"},
                        { "orderable": false, "targets": 10 }
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
                        <th>Subject</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <% while(rs!=null && rs.next()){ %>
                    <tr>
                        <td><%=rs.getString("item")%></td>
                        <td><%=rs.getString("student_num")%></td>
                        <td><%=rs.getString("last_name")%></td>
                        <td><%=rs.getString("first_name")%></td>
                        <td><%=rs.getString("section")%></td>
                        <td><%=rs.getString("room")%></td>
                        <td><%=rs.getString("subject")%></td>
                        <td><%=rs.getString("time_borrowed")%></td>
                        <td><%=rs.getString("time_returned")%></td>
                        <td><%=rs.getString("status")%></td>
                        <td><button type="button" data-toggle="modal" data-target="#returnPrompt">Return</button></td>
                    </tr>
                    <% } %>
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