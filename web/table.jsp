<%-- 
    Document   : table.jsp
    Created on : 05 7, 23, 4:28:22 PM
    Author     : Gelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>User Table</title>
        <style>

            body {
                background-color: #D0A17E;
            }

            button {
                padding: 1.3em 3em;
                font-size: 12px;
                text-transform: uppercase;
                letter-spacing: 2.5px;
                font-weight: 500;
                color: #000;
                background-color: #dedeed;
                border: none;
                border-radius: 45px;
                box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease 0s;
                cursor: pointer;
                outline: none;
                margin-top: 10px;
                margin-bottom: 10px;
            }

            button:hover {
                background-color: #570026   ;
                box-shadow: 0px 15px 20px #1b1b32;
                color: #dedeed;
                transform: translateY(-7px);
            }

            button:active {
                transform: translateY(-1px);
            }

            .button-container {
                margin-top: 20px;
                text-align: center;
            }
        </style>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap"
            rel="stylesheet"
            />
    </head>
    <body>

        <h1 align="center">User Table</h1>

        <table border="1" align="center">
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Name</th>
                <th>Address</th>
                <th>Birthday</th>
            </tr>

            <%
                ResultSet results = (ResultSet) request.getAttribute("records");
                while (results.next()) {%>
            <tr>
                <td><%=results.getString("Username")%></td>
                <td><%=results.getString("Password")%></td>
                <td><%=results.getString("Name")%></td>
                <td><%=results.getString("Address")%></td>
                <td><%=results.getString("Birthday")%></td>
            </tr>	
        </table>
        <form action="index.jsp" class="button-container"><button class="button">Logout</button></form>
    </body>
</html>
