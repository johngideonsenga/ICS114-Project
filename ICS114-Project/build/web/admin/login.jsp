<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IICS Borrowing System | Login</title>
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css"/>
        <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <center>
            <form action="loginServlet" method="POST">
                <h1>IICS Borrowing System</h1>
                <h4>Administrator Account</h4>
                <br><br>
                <label>Username</label><br>
                <input type="text" name="username" /><br><br>
                <label>Password</label><br>
                <input type="password" name="password"/><br><br>
                <input type="submit" name="submit" value="Submit"/>
            </form>
        </center>
    </body>
</html>
