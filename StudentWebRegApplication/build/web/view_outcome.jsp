<%-- 
    Document   : view_outcome
    Created on : 12 May 2025, 11:42:00 AM
    Author     : Clixx29
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style="background-color: azure">
        <h1>Registered Students</h1>
        <table border="1">
            <tr>
                <th>Student Number</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Course</th>
            </tr>
            <%
                List<Student> students = (List<Student>) request.getAttribute("students");
                if (students != null && !students.isEmpty()) {
                    for (Student s : students) {
            %>
                        <tr>
                            <td><%= s.getId() %></td>
                            <td><%= s.getName() %></td>
                            <td><%= s.getSurname() %></td>
                            <td>
                                <%
                                    String course = s.getCourse();
                                    if ("C".equals(course)) {
                                        out.print("Computer Science");
                                    } else if ("D".equals(course)) {
                                        out.print("Systems Development");
                                    } else if ("I".equals(course)) {
                                        out.print("Informatics");
                                    } else if ("S".equals(course)) {
                                        out.print("Information Security");
                                    } else {
                                        out.print("Unknown");
                                    }
                                %>
                            </td>
                        </tr>
            <%
                    }
                } else {
            %>
                <tr><td colspan="4">No students found.</td></tr>
            <%
                }
            %>
        </table>
        <br>
        <a href="faculty.html">Back to Faculty Menu</a><br>
        <a href="index.html">home</a>
    </body>
</html>
