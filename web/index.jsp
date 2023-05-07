
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            <%@include file="styles/indexstyles.css"%>
        </style>
        <title>Login Page</title>
    </head>
    <body>
        <div class="center">
            <h1>Login ka</h1>
            <form action="LoginServlet" method="post">
                <div class="txt_field">
                    <input type="text" name="username" required>
                    <span></span>
                    <label>Username</label>
                </div>
                <div class="txt_field">
                    <input type="password" name="password" required>
                    <span></span>
                    <label>Password</label>
                </div>
                <input type="submit" class="login" value="Login">
            </form>
            <br>
        </div>
    </body>
</html>