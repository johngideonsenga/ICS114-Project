<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Change Password</title>
    </head>
    <body>  
        <center>
            <form action="" method="POST">
                <h1>Change Password</h1>
                <h3>Current Password: <input type="password" name="currentPw"/></h3><br>
                <h3>New Password: <input type="password" name="newPw"/></h3><br>
                <h3>Confirm Password: <input type="password" name="confirmPw"/></h3><br>
                <input type="submit" name="submit" value="Submit"/>
            </form>
        </center>
    </body>
</html>