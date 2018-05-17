<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <center><%@include file='templates/header.html'%></center> 
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
            <label id="msg"></label>
        </center>
    </body>
</html>