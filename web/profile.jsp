
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="img/jpeg; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/profilestyles.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans:wght@700&family=Lexend+Deca&display=swap" rel="stylesheet">
    </head>
    <title>Profile Page</title>
</head>
<body>
    <header>
        <nav class="navbar"> 
            <header>
                <h1>COVID-19 Tracker</h1>
            </header>
            <ul name="navigation" class="navlist">
                <li><a href="${pageContext.request.contextPath}/index.jsp" class="navlink">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/menu.jsp" class="navlink">Health Declaration</a></li>
                <li><a href="${pageContext.request.contextPath}/profile.jsp" class="navlink">Profile</a></li>
            </ul> 
        </nav>
    </header>
    <center>
    <main>
        
        <div class="profilepic">
            <img src="https://www.w3schools.com/howto/img_avatar.png" alt="profile picture">
        </div>   
        <!-- Main -->
        <div class="main">
            <h2>Personal Information</h2>
            <div class="card">
                <div class="card-body">
                    <i class="fa fa-pen fa-xs edit"></i>
                    <table>
                        <tbody>
                            <tr>
                                <td>Name</td>
                                <td>:</td>
                                <td>Insert Scriplet</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>:</td>
                                <td>Insert Scriplet</td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>:</td>
                                <td>Insert Scriplet</td>
                            </tr>
                            <tr>
                                <td>Birthday</td>
                                <td>:</td>
                                <td>Insert Scriplet</td>
                            </tr>
                            <tr>
                                <td>Occupation</td>
                                <td>:</td>
                                <td>Insert Scriplet</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        </center>
    </main>
</body>
</html>
