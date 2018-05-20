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
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css"/>
        <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            function isMatch(){
                if (document.getElementById('newPw').value === document.getElementById('confirmPw').value){
                    document.getElementById('msg').innerHTML = 'Password matched';
                    document.getElementById('msg').style.color = 'green';
                    document.getElementById('submit').disabled = false;
                }else{
                    document.getElementById('msg').innerHTML = 'Password does not match';
                    document.getElementById('msg').style.color = 'red';
                    document.getElementById('submit').disabled = true;
                }
            }
        </script>
    </head>
    <body>
        <%@include file='templates/header.html'%>
        <center><br><br>
            <form action="" method="POST">
                <table>
                    <tr>
                        <td>Old Password:</td>
                        <td><input type="password" name="currentPw" required/></td>
                    </tr>
                    <tr>
                        <td>New Password:</td>
                        <td><input type="password" onkeyup="isMatch();" name="newPw" id="newPw" required/></td>
                    </tr>
                    <tr>
                        <td>Confirm Password:</td>
                        <td><input type="password" onkeyup="isMatch();" name="confirmPw" id="confirmPw" required/></td>
                    </tr>
                </table><br>
                <input type="submit" name="submit" value="Submit" id="submit"/>
            </form><br>
            <p id="msg"></p>
        </center>
    </body>
</html>