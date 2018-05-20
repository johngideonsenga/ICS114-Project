<%@page import="java.sql.ResultSet"%>
<%@page import="com.logic.service.Borrower"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    //disable caching
    response.setContentType("text/html");
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("Pragma","no-cache"); 
    
    //establish session
    session = request.getSession(false);
    
    //check if session is empty
    if(session.getAttribute("user") == null){
        response.sendRedirect("login.jsp");
    }
    
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
            
            function setReturn(borrowerID,itemID){
                document.getElementById("borrowerID").value = borrowerID;
                document.getElementById("itemID").value = itemID;
            }
            
            <% if(request.getParameter("success")!=null){ %>
                $(window).on('load',function(){
                    $('#success').modal('show');
                });
            <% } %>
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
                        <td><%=rs.getString("item_name")%></td>
                        <td><%=rs.getString("student_num")%></td>
                        <td><%=rs.getString("last_name")%></td>
                        <td><%=rs.getString("first_name")%></td>
                        <td><%=rs.getString("section")%></td>
                        <td><%=rs.getString("room")%></td>
                        <td><%=rs.getString("subject")%></td>
                        <td><%=rs.getString("time_borrowed")%></td>
                        <td><%=rs.getString("time_returned")%></td>
                        <td><%=rs.getString("status")%></td>
                        <% if(rs.getString("status").equals("Borrowed")){ %>
                        <td><button type="button" 
                                onclick="setReturn('<%=rs.getString("borrower_ID")%>','<%=rs.getString("item_ID")%>')" 
                                data-toggle="modal" data-target="#returnPrompt">Return</button>
                        </td>
                        <% }else{ %>
                        <td></td>
                        <% } %>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
        <div>
            <form action="../generatePDFServlet" method="POST">
                <input type="submit" value="Generate a PDF List" />
            </form>
        </div>
        <!--Modals-->
        <%@include file='modals/returnPrompt.html'%>
        <%@include file='modals/generateSuccess.html'%>
    </body>
</html>