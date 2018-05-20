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
        <title>IICS Borrowing System</title>
        <script type="text/javascript" src="jquery/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
        <script type="text/javascript" src="DataTables/datatables.min.js"></script>
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"/>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready( function (){
                $('#table').DataTable({
                    "columnDefs": [
                        {"className": "dt-center", "targets": "_all"},
                        { "orderable": false, "targets": 2 }
                    ]
                });
            });
            
            function setItem(itemID, itemName){
                document.getElementById("itemID").value = itemID;
                document.getElementById("itemName").value = itemName;
            }
            
            <% if(request.getParameter("success")!=null){ %>
                $(window).on('load',function(){
                    $('#success').modal('show');
                });
            <% } %>
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
                    <% while(rs!=null && rs.next()){%>
                    <tr>
                        <td><%=rs.getString("item_name")%></td>
                        <td><%=rs.getInt("stock")%></td>
                        <td><button type="button" 
                            onClick="setItem('<%=rs.getString("item_ID")%>','<%=rs.getString("item_name")%>')"
                            data-toggle="modal" data-target="#borrowForm">Borrow</button>
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </div>
        <!--Modals-->
        <%@include file='modals/borrowForm.html'%>
        <%@include file='modals/borrowSuccess.html'%>
        <%@include file='modals/borrowFailed.html'%>
    </body>
</html>
