<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    //disable caching, eto yung solution
    response.setContentType("text/html");
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setDateHeader("Expires", 0);
    response.setHeader("Pragma","no-cache"); 
    
    //destroy session
    session.invalidate();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IICS Borrowing System | Login</title>
        <script type="text/javascript" src="../jquery/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css"/>
        <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="../css.css"/>
        <script type="text/javascript">
            <% if(request.getParameter("failed")!=null){ %>
                $(window).on('load',function(){
                    $('#failed').modal('show');
                });
            <% } %>  
        </script>
    </head>
    <body class="body2">
        
        <center>
            <br><br><br><br><br><br>
            <button type="button" style="background-color: transparent; border: none;" onClick='location.href="../index.jsp"'/><img src="../Pics/adminlog.png" style="height: 250px;"/></button>
            <form class="formloc" action="../loginServlet" method="POST">
                <center>      
                <br><br><br>
                <table align="center">
                    <tr>
                        <td class="modal-td">Username</td>
                         <td><input type="text" name="username" /></td>
                    </tr>
                     <tr>
                        <td class="modal-td">Password</td>
                        <td><input type="password" name="password"/></td>
                    </tr>
                </table>
                </center><br>
                <input type="submit" name="submit" value="Submit"/>
            </form>
        </center>
        <!--Modals-->
        <%@include file='modals/loginFailed.html'%>
    </body>
</html>
