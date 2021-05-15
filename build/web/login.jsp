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
        <title>Login Page</title>
    </head>
    <body onload="startTime()">
        <div id="bar">Sign In
            <span id="links"><a href="register.jsp">Register</a> | <a href="index.jsp">Home</a></span>
        </div>
        
        <form action="welcome.jsp" method="post">
            <table class="table">
                <tr><td>Email</td><td><input type="text" name="email"></td></tr>
                <tr><td>Password</td><td><input type="password" name="password"></td></tr>
                <tr><td><input class="button" type="submit" value="Login"></td>
                
            </table>
        </form>
        <div id="clock" class="footer">
            
        </div>
    </body>
</html>
