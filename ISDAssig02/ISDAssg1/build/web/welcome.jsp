<%-- 
    Document   : index
    Created on : Mar 19, 2021, 10:24:22 AM
    Author     : Goodboi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/layout.css">
        <link rel="stylesheet" href="css/form.css">
        <script type="text/javascript" src="js/index.js"></script>
        <title>Welcome Page</title>
    </head>
    <body onload="startTime()">
        <div id="bar">IOTBay
            <span id="links"><a href="profile.jsp">Profile</a> | <a href="logout.jsp">Logout</a></span>
        </div>
        <%
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
        %>
        <div class="m1">Welcome <%= firstName%> <%= lastName%>!
        <br>Your contact:
        <br>Email - <%= email%>
        <br>Phone - <%= phone%>
        <br>Check your profile for personal detail!
        </div>
        <%
            User user = new User(firstName,lastName,email,password,phone,gender,dob);
            session.setAttribute("user",user);
        %>
        <div id="clock" class="footer"></div>
    </body>
</html>
