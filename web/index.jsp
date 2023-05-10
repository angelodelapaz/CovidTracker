<%-- 
    Document   : index
    Created on : 05 8, 23, 2:23:01 AM
    Author     : AldrinLuces
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Page</title>
        <link href="styles/indexstyles.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="login">
                <div class="content">
                    <img src="images/ManilaResidences2.png"/>
                </div>
                <div class="loginForm">
                    <h1>COVID-19 Tracker Login</h1>
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
                        <!--<button class="btn">Login</button>-->
                        <input type="submit" class="btn" value="Login">
                    </form>
                    <br>
                </div>
            </div>
        </div>
    </body>
</html>