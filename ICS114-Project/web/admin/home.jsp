<%@page import="java.sql.ResultSet"%>
<%@page import="com.logic.service.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Item item = new Item();
    ResultSet rs = item.getItems();
%>
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
                        {"className": "dt-center", "targets": "_all"},
                        { "orderable": false, "targets": [2,3] }
                    ]
                });
            });
            
            <% if(request.getParameter("success")!=null){ %>
                $(window).on('load',function(){
                    $('#success').modal('show');
                });
            <% } %>
                
            <% if(request.getParameter("failed")!=null){ %>
                $(window).on('load',function(){
                    $('#failed').modal('show');
                });
            <% } %>    
                
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
                    <% while(rs!=null && rs.next()){%>
                    <tr>
                        <td><%=rs.getString("item_name")%></td>
                        <td><%=rs.getInt("stock")%></td>
                        <td><button type="button" data-toggle="modal" data-target="#editForm">Edit Stock</button></td>
                        <td><button type="button" data-toggle="modal" data-target="#deletePrompt">Delete Item</button></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>

        <!--Modals-->
        <%@include file='modals/editForm.html'%>
        <%@include file='modals/deletePrompt.html'%>
        <%@include file='modals/addForm.html'%>
        <%@include file='modals/addSuccess.html'%>
        <%@include file='modals/addFailed.html'%>
    </body>
</html>
