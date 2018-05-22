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
%>
<html>
    <head>
        <title>IICS Borrowing System | Change Password</title>
        <script type="text/javascript" src="../jquery/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css"/>
        <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            function isMatch(){
                newPw = document.getElementById('newPw').value;
                confirmPw = document.getElementById('confirmPw').value;
                if(newPw && confirmPw){
                    if (newPw === confirmPw){
                        document.getElementById('msg').innerHTML = 'Password matched';
                        document.getElementById('msg').style.color = 'green';
                        document.getElementById('submit').disabled = false;
                    }else{
                        document.getElementById('msg').innerHTML = 'Password does not match';
                        document.getElementById('msg').style.color = 'red';
                        document.getElementById('submit').disabled = true;
                    }
                }
                else{
                    document.getElementById('msg').innerHTML = '';
                }
            }
            
            <% if(request.getParameter("failed")!=null){ %>
                $(window).on('load',function(){
                    $('#failed').modal('show');
                });
            <% } %>  
                
            <% if(request.getParameter("incorrect")!=null){ %>
                $(window).on('load',function(){
                    $('#incorrect').modal('show');
                });
            <% } %>
                
            <% if(request.getParameter("success")!=null){ %>
            $(window).on('load',function(){
                $('#success').modal('show');
            });
            <% } %>
        </script>
    </head>
    <body>
        <%@include file='templates/header.html'%>
        <center><br><br>
            <form action="../changePwServlet" method="POST">
                <input type='hidden' name='user' value='<%=session.getAttribute("user")%>' >
                <table>
                    <tr>
                        <td>Current Password:</td>
                        <td><input type="password" name="currentPw" required/></td>
                    </tr>
                    <tr>
                        <td>New Password:</td>
                        <td><input type="password" onkeyup="isMatch();" name="newPw" id="newPw" required/></td>
                    </tr>
                    <tr>
                        <td>Confirm Password:</td>
                        <td><input type="password" onkeyup="isMatch();" id="confirmPw" required/></td>
                    </tr>
                </table><br>
                <input type="submit" name="submit" value="Submit" id="submit" disabled/>
            </form><br>
            <p id="msg"></p>
        </center>
    </body>
    <%@include file='modals/changePwIncorrect.html'%>
    <%@include file='modals/changePwFailed.html'%>
    <%@include file='modals/changePwSuccess.html'%>
</html>