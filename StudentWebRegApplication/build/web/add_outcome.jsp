<%-- 
    Document   : add_outcome
    Created on : 12 May 2025, 11:30:39 AM
    Author     : Clixx29
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: azure">
        <h1>Student Registration!</h1>
        
        
        <p>Your details are added successfully into the database.</p>

       
        <h2>Student Details:</h2>
        <ul>
            <li>Student ID: <%= request.getAttribute("student") != null ? ((Student)request.getAttribute("student")).getId() : "N/A" %></li>
            <li>Name: <%= request.getAttribute("student") != null ? ((Student)request.getAttribute("student")).getName() : "N/A" %></li>
            <li>Surname: <%= request.getAttribute("student") != null ? ((Student)request.getAttribute("student")).getSurname() : "N/A" %></li>
            <li>Course: <%= request.getAttribute("student") != null ? ((Student)request.getAttribute("student")).getCourse() : "N/A" %></li>
        </ul>

     
        <p>
            <a href="index.html">Main Menu</a><br>
            <a href="student.html">Student Menu</a>
        </p>
            
    </body>
</html>
