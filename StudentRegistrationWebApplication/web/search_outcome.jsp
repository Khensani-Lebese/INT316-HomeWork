<%-- 
    Document   : search_outcome
    Created on : 12 May 2025, 5:08:49 AM
    Author     : TRafapa
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search_outcome Page</title>
    </head>
    <body style="background-color: azure">
        <h1>Results of search!</h1>
        <%
            List<Student> student = (List<Student>)request.getAttribute("student");
        %>
        
        <table border="1">
            <th>ID</th>
            <th>Name</th>
            <th>Surname</th>
            <th>Course</th>
            <th>StudentNumber</th>
            <%
                for(int i =0;i<student.size();i++){
                Student stud = student.get(i);
                Long id = stud.getId();
                String name = stud.getName();
                String surname = stud.getSurname();
                Character course = stud.getCourse();
                Long studentNumber = stud.getStudentNumber();
            %>
            <tr>
                <td><%=id%></td>
                <td><%=name%></td>
                <td><%=surname%></td>
                <td><%=course%></td>
                <td><%=studentNumber%></td>
                
            </tr>
            <%
                }
            %>
        </table>
        
        <h3><a href="index.html">Main Menu</a> </h3>
        <h3> <a href="faculty.html">Faculty Menu</a></h3>
    </body>
</html>
