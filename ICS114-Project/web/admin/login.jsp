<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IICS Borrowing System | Login</title>
        <script type="text/javascript" src="../jquery/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css"/>
        <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            <% if(request.getParameter("failed")!=null){ %>
                $(window).on('load',function(){
                    $('#failed').modal('show');
                });
            <% } %>  
        </script>
    </head>
    <body>
        <input type="button" onClick='location.href="../index.jsp"' value="Home"/>
        <center>
            <form action="../loginServlet" method="POST">
                <h1>IICS Borrowing System</h1>
                <h4>Administrator Account</h4>
                <br><br>
                <table align="center">
                    <tr>
                        <td>Username:</td>
                         <td><input type="text" name="username" /></td>
                    </tr>
                     <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password"/></td>
                    </tr>
                </table><br>
                <input type="submit" name="submit" value="Submit"/>
            </form>
        </center>
        <!--Modals-->
        <%@include file='modals/loginFailed.html'%>
    </body>
</html>
