<%-- 
    Document   : view
    Created on : 12 May 2025, 5:19:17 AM
    Author     : TRafapa
--%>

<%@page import="javax.ejb.EJB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Page</title>
    </head>
    <body style="background-color: azure">
        <h1>See All Captured Data!</h1>
        <form action="ViewAllServlet.do" method="post">
            <table>
                <tr>
                    <td><input type="submit" value="VIEW ALL"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
