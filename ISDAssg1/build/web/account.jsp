<%-- 
    Document   : index
    Created on : 15/03/2021, 3:05:56 PM
    Author     : george
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
        <title>Account Page</title>
    </head>
    <body onload="startTime()">
        <div id="bar">
            ISD Demo
            <span id="links"> <a href="profile.jsp"> Profile</a> | <a href="logout.jsp">Logout</a></span>
        </div>
        <%!
            String firstName;
            String lastName;
            String email;
            String password;
            String phone;
            String gender;
            String dob;
        %>
        <%
            String submitted = request.getParameter("submitted");
            User user = (User)session.getAttribute("user");
        %>
        <%
            firstName = request.getParameter("firstName");
            lastName = request.getParameter("lastName");
            email = request.getParameter("email");
            password = request.getParameter("password");
            phone = request.getParameter("phone");
            gender = request.getParameter("gender");
            dob = request.getParameter("dob");
        %>
        
        
        <form action="account.jsp" method="post">
            <table class="table">
                <tr><td>First Name</td><td><input type="text" name="firstName" value="<%=(submitted!= null) ?request.getParameter("firstName") : user.getfirstName()%>"></td></tr>
                <tr><td>Last Name</td><td><input type="text" name="lastName" value="<%=(submitted!= null) ?request.getParameter("lastName") : user.getlastName()%>"></td></tr>
                <tr><td>Email</td><td><input type="text" name="email" value="<%= (submitted!= null) ?request.getParameter("email") : user.getEmail()%>"></td></tr>
                <tr><td>Password</td><td><input type="password" name="password" value="<%= (submitted!= null) ?request.getParameter("password") : user.getPassword()%>"></td></tr>
                <tr><td>Phone</td><td><input type="text" name="phone" value="<%=(submitted!= null) ?request.getParameter("phone") : user.getPhone() %>"></td></tr>                
                <tr><td> DOB</td><td><input class="date" type="date" name="dob" value="<%= (submitted!= null) ?request.getParameter("dob") : user.getDob()%>"/></td></tr>
                <tr><td><select class="select" name="gender">
                            <option value=""><%= (submitted!= null) ?request.getParameter("gender") : user.getGender()%></option>
                            <option value="male">M</option>
                            <option value="female">F</option>
                            <option value="other">Other</option>                                                                
                    </select></td>
                    <td><input class="button" type="submit" value="Update"></td>
                    <td><input type="hidden" value="submitted" name="submitted"></td>
                </tr>                
            </table>
        </form>
                    
        
        <%
            user.updateInfo(firstName,lastName,email,password,phone,gender,dob);
            session.setAttribute("user", user);
        %>
        
        <div id="clock" class="footer">            
        </div>
    </body>
</html>
