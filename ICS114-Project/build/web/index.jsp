<%@page import="java.sql.ResultSet"%>
<%@page import="com.logic.service.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    //disable caching
    response.setContentType("text/html");
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("Pragma","no-cache"); 
    
    //destroy session
    session.invalidate();
    
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
        <link rel="stylesheet" type="text/css" href="css.css" />
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
    
    <body class='body1'> 
        <center>
            <img src="Pics/header.png" style="height: 200px;">
            <div class="table1 transparent">
                <table id="table">
                    <thead>
                        <tr class="th1" >
                            <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Item</th>
                            <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Stock</th>
                            <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <% while(rs!=null && rs.next()){%>
                        <tr>
                            <td class="td1"><%=rs.getString("item_name")%></td>
                            <td class="td1"><%=rs.getInt("stock")%></td>
                            <% if(rs.getInt("stock")>0){ %>
                            <td class="td1"><button type="button" 
                                onClick="setItem('<%=rs.getString("item_ID")%>','<%=rs.getString("item_name")%>')"
                                data-toggle="modal" data-target="#borrowForm">Borrow</button>
                            </td>
                            <% }else{ %>
                            <td></td>
                            <% } %>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
                <br>
                
                <div>
                    <input  type="button" onClick='location.href="admin/login.jsp"' value="Login as admin"/>
                </div>
                <br/><br/><br/><br/><br/>
            </div>
        </center>       
        <!--Modals-->
        <%@include file='modals/borrowForm.html'%>
        <%@include file='modals/borrowSuccess.html'%>
    </body>
</html>
