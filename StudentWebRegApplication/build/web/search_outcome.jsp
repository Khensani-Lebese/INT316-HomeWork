<%-- 
    Document   : search_outcome
    Created on : 12 May 2025, 10:32:31 PM
    Author     : Clixx29
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body {
            background-color: azure;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
    <body>
        <h1>Search Results</h1>
        
        <table>
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
                    <tr><td colspan="4">No students found for the selected course.</td></tr>
            <%
                }
            %>
        </table>
        
        <br>
        <a href="faculty.html">Back to Faculty Menu</a><br>
        <a href="index.html">home</a>
    </body>
</html>
