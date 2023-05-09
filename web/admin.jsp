<%-- 
    Document   : admin
    Created on : 05 8, 23, 6:41:41 AM
    Author     : AldrinLuces
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Tracker Page</title>
        <link href="styles/adminstyles.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="table">
            <div class="table_header">
                <img src="images/Manila Residences1.png" height="80">
                <p>COVID-19 Tracker</p>

            </div>
            <div class="table_section">
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Sex</th>
                            <th>Address</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Aldrin Luces</td>
                            <td>20</td>
                            <td>M</td>
                            <td>Block 1 Lot 1, Pitaklan Street</td>
                            <td>Positive</td>
                            <td>
                                <button class="delete"><i class="fa-solid fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Angelo Dela Paz</td>
                            <td>20</td>
                            <td>M</td>
                            <td>Block 12 Lot 4, Mimi Street</td>
                            <td>Asymptomatic</td>
                            <td>
                                <button class="delete"><i class="fa-solid fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Levin Sta. Cruz</td>
                            <td>21</td>
                            <td>M</td>
                            <td>Block 5 Lot 8, Tete Street</td>
                            <td>Positive</td>
                            <td>
                                <button class="delete"><i class="fa-solid fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Taylor Swift</td>
                            <td>35</td>
                            <td>F</td>
                            <td>Block 10 Lot 2, Cornelia Street</td>
                            <td>Negative</td>
                            <td>
                                <button class="delete"><i class="fa-solid fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Miley Cyrus</td>
                            <td>26</td>
                            <td>F</td>
                            <td>Block 6 Lot 9, Wrecking Street</td>
                            <td>Negative</td>
                            <td>
                                <button class="delete"><i class="fa-solid fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>Bruno Mars</td>
                            <td>64</td>
                            <td>M</td>
                            <td>Block 32 Lot 11, Versace Street</td>
                            <td>Asymptomatic</td>
                            <td>
                                <button class="delete"><i class="fa-solid fa-trash"></i></button>
                            </td>
                        </tr>
                        <%--
                            if (!itemList.isEmpty()) {
                                for (item i : itemList) 
                                {
                                    int c = itemList.indexOf(i);
                        %>
                        <tr>
                            <td><img src="<%=i.getPicture()%>"></td>
                            <td><%=i.getName()%></td>
                            <td>₱<%=i.getPrice()%></td>
                            <td><%=countList.get(c)%></td>
                            <td>₱<%=countList.get(c) * i.getPrice()%></td>
                            <td>
                                <button class="delete"><i class="fa-solid fa-trash"></i></button>
                            </td>
                        </tr>
                        <%
                                }
                            }--%>
                    </tbody>
                </table>
            </div>
            <div>
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <input class="button" value="Add Record" type="button" onclick="location.href='healthDeclarationForm.jsp';" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
