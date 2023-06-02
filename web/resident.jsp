<%-- 
    Document   : resident
    Created on : 05 8, 23, 6:41:15 AM
    Author     : AldrinLuces
--%>

<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Resident Tracker Page</title>
        <link href="styles/residentstyles.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="table">
            <header>
                <img src="images/ManilaResidences3.png" height="80" class="logo">
                <nav>
                    <input type="checkbox" id="check">
                    <label for="check" class="checkbtn">
                        <i class="fas fa-bars"></i>
                    </label>
                    <ul>
                        <li><a href="/CovidTracker/profile.jsp">Profile</a></li>
                        <li><a class="active" href="/CovidTracker/resident.jsp">Cases</a></li>
                        <li><a href="/CovidTracker/healthDeclarationForm.jsp">Health Declaration</a></li>
                        <li><a href="/CovidTracker/index.jsp">Logout</a></li>
                    </ul>
                </nav>
            </header>
            <div class="table_section">
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Birthday</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>Occupation</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            ResultSet results = (ResultSet)session.getAttribute("tablerecords");
                            session.setAttribute("tablerecords", results);
                            ResultSet result = (ResultSet)session.getAttribute("tablerecords");
                            while (result.next()){
                        %>
                        <tr>
                        <td><%=results.getString("Name")%></td>
                        <td><%=results.getString("Birthday")%></td>
                        <td><%=results.getString("Email")%></td>
                        <td><%=results.getString("Address")%></td>
                        <td><%=results.getString("Occupation")%></td>
                        <td><%=results.getString("Status")%></td>
                        </tr>
                        <% } %>
                                
                        <!-- comment 
                        <tr>
                            <td>Aldrin Luces</td>
                            <td>20</td>
                            <td>M</td>
                            <td>Block 1 Lot 1, Pitaklan Street</td>
                            <td>Positive</td>
                        </tr>
                        <tr>
                            <td>Angelo Dela Paz</td>
                            <td>20</td>
                            <td>M</td>
                            <td>Block 12 Lot 4, Mimi Street</td>
                            <td>Asymptomatic</td>
                        </tr>
                        <tr>
                            <td>Levin Sta. Cruz</td>
                            <td>21</td>
                            <td>M</td>
                            <td>Block 5 Lot 8, Tete Street</td>
                            <td>Positive</td>
                        </tr>
                        <tr>
                            <td>Taylor Swift</td>
                            <td>35</td>
                            <td>F</td>
                            <td>Block 10 Lot 2, Cornelia Street</td>
                            <td>Negative</td>
                        </tr>
                        <tr>
                            <td>Miley Cyrus</td>
                            <td>26</td>
                            <td>F</td>
                            <td>Block 6 Lot 9, Wrecking Street</td>
                            <td>Negative</td>
                        </tr>
                        <tr>
                            <td>Bruno Mars</td>
                            <td>64</td>
                            <td>M</td>
                            <td>Block 32 Lot 11, Versace Street</td>
                            <td>Asymptomatic</td>
                        </tr> 
                        -->
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
