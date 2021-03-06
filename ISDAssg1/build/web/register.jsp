<%-- 
    Document   : index
    Created on : Mar 19, 2021, 10:24:22 AM
    Author     : George
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/layout.css">
        <link rel="stylesheet" href="css/form.css">
        <script type="text/javascript" src="js/index.js"></script>
        <title>Register Page</title>
    </head>
    <body onload="startTime()">
        <div id="bar">Sign Up
            <span id="links"><a href="login.jsp">Login</a> | <a href="index.jsp">Home</a></span>
        </div>
        
        <form action="welcome.jsp" method="post">
            <table class="table">
                <tr><td>First Name</td><td><input type="text" name="firstName"></td></tr>
                <tr><td>Last Name</td><td><input type="text" name="lastName"></td></tr>
                <tr><td>Email</td><td><input type="text" name="email"></td></tr>
                <tr><td>Password</td><td><input type="password" name="password"></td></tr>
                <tr><td>Phone</td><td><input type="text" name="phone"></td></tr>                
                <tr><td> DOB</td><td><input class="date" type="date" name="dob"/></td></tr> 
                <tr><td>
                        <select class="select" name="gender">
                            <option value="empty">Gender</option>
                            <option value="male">M</option>
                            <option value="female">F</option>
                            <option value="other">Other</option>                                                                
                        </select>
                    </td>
                        <td><input class="button" type="submit" value="Sign Up"></td></tr>
            </table>
        </form>
        
        <div id="clock" class="footer">
            
        </div>
    </body>
</html>
