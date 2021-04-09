<%-- 
    Document   : index
    Created on : 15/03/2021, 3:05:56 PM
    Author     : Goodbois
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
        <title>Profile Page</title>
    </head>
    <body onload="startTime()">
        <div id="bar">
            IOTBay
            <span id="links"> <a href="account.jsp">Account</a> | <a href="logout.jsp">Logout </a></span>
        </div>
        <%
            User user = (User)session.getAttribute("user");
        %>
        <table class="table">            
            <tr><td>First Name:</td><td><%= user.getfirstName() %></td></tr>
            <tr><td>Last Name:</td><td><%= user.getlastName() %></td></tr>   
            <tr><td>Email:</td><td> ${user.email} </td></tr>
            <tr><td>Password:</td><td>${user.password}</td></tr>
            <tr><td>Phone:</td><td> ${user.phone}</td></tr>
            <tr><td>Gender:</td><td> ${user.gender}</td></tr>
            <tr><td>Date of Birth:</td><td> ${user.dob} </td></tr>    
            <tr><td>Update your profile</td></tr>
            <tr><td>by clicking on account.</td></tr>
        </table>
        
        <div id="clock" class="footer">            
        </div>
    </body>
</html>
