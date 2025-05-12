<%-- 
    Document   : remove_outcome
    Created on : 12 May 2025, 4:55:34 AM
    Author     : TRafapa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Page</title>
    </head>
    <body style="background-color: azure">
        <h1>Remove Student Outcome!</h1>
        
        <%
            Long studentNumber = (Long)request.getAttribute("studentNumber");
        %>
        <p>Student with student number <%=studentNumber%> has been removed successfully.</p>
        
        <h3><a href="index.html">Main Menu</a> </h3>
        <h3> <a href="faculty.html">Faculty Menu</a></h3>
    </body>
</html>
