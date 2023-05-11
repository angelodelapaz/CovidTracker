<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="img/jpeg; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="styles/profilestyles.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <title>Profile Page</title>
    </head>
    <body>
        <header>
            <img src="images/ManilaResidences3.png" height="80" class="logo">
            <nav>
                <input type="checkbox" id="check">
                <label for="check" class="checkbtn">
                    <i class="fas fa-bars"></i>
                </label>
                <ul>
                    <li><a class="active" href="/CovidTracker/profile.jsp">Profile</a></li>
                    <li><a href="/CovidTracker/resident.jsp">Cases</a></li>
                    <li><a href="/CovidTracker/healthDeclarationForm.jsp">Health Declaration</a></li>
                    <li><a href="/CovidTracker/index.jsp">Logout</a></li>
                </ul>
            </nav>
        </header>
    <center>
        <main> 
            <div class="profilepic">
                <img class="pfp" src="https://www.w3schools.com/howto/img_avatar.png" alt="profile picture">
            </div>   
            <!-- Main -->
            <div class="main">
                <h2>Personal Information</h2>
                <div class="card">
                    <table>
                        <tbody>
                            <%
                                ResultSet results = (ResultSet) request.getAttribute("records");
                                while (results.next()) {%>
                            <tr>
                                <td>Name</td>
                                <td>:</td>
                                <td><%=results.getString("Name")%></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>:</td>
                                <td><%=results.getString("Username")%></td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>:</td>
                                <td><%=results.getString("Address")%></td>
                            </tr>
                            <tr>
                                <td>Birthday</td>
                                <td>:</td>
                                <td><%=results.getString("Birthday")%></td>
                            </tr>
                            <tr>
                                <td>Occupation</td>
                                <td>:</td>
                                <td><%=results.getString("Password")%></td>
                                <%	}%>
                            </tr>
                        </tbody>
                    </table>
                    <input value="Add Record" type="button" onclick="location.href = 'healthDeclarationForm.jsp';" />

                </div>
            </div>
    </center>
</main>
</body>
</html>
