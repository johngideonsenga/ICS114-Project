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
        <link rel="stylesheet" type="text/css" href="../css.css" />
        
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
    <body class="body3">
        <%@include file='templates/header.html'%>
    <center>
        <img src="../Pics/header.png" style="height: 200px;"/>
        <div class="table3 transparent" style="width:80%;">
            <table id="table">
                <thead>
                    <tr class="th3">
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Item</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Student Number</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Last Name</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">First Name</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Section</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Room</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Subject</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Time Borrowed</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Time Returned</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;">Status</th>
                        <th style="border-top: 2px solid #f4484b; border-bottom: 2px solid #f4484b;"></th>
                    </tr>
                </thead>
                <tbody>
                    <% while(rs!=null && rs.next()){ %>
                    <tr>
                        <td class="td3"><%=rs.getString("item_name")%></td>
                        <td class="td3"><%=rs.getString("student_num")%></td>
                        <td class="td3"><%=rs.getString("last_name")%></td>
                        <td class="td3"><%=rs.getString("first_name")%></td>
                        <td class="td3"><%=rs.getString("section")%></td>
                        <td class="td3"><%=rs.getString("room")%></td>
                        <td class="td3"><%=rs.getString("subject")%></td>
                        <td class="td3"><%=rs.getString("time_borrowed")%></td>
                        <td class="td3"><%=rs.getString("time_returned")%></td>
                        <td class="td3"><%=rs.getString("status")%></td>
                        <% if(rs.getString("status").equals("Borrowed")){ %>
                        <td class="td3"><button type="button" 
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
            <form action="../generatePDFServlet" method="POST">
                <center><input type="submit" value="Generate a PDF List" /></center>
            </form>
        </div>
                
    </center>
           
        <!--Modals-->
        <%@include file='modals/returnPrompt.html'%>
        <%@include file='modals/generateSuccess.html'%>
    </body>
</html>