<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>IICS Borrowing System | Change Password</title>
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
        <center>
            <form action="" method="POST">
                <h1>Change Password</h1><br>
                <h3>Current Password: <input type="password" name="currentPw" required/></h3>
                <h3>New Password: <input type="password" onkeyup="isMatch();" name="newPw" id="newPw" required/></h3>
                <h3>Confirm Password: <input type="password" onkeyup="isMatch();" name="confirmPw" id="confirmPw" required/></h3>
                <input type="submit" name="submit" value="Submit" id="submit"/>
            </form>
            <label id="msg"></label>
        </center>
    </body>
</html>