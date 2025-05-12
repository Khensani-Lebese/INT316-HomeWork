/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author TRafapa
 */
public class AddServlet extends HttpServlet {
@EJB StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String name = request.getParameter("name");
       String surname = request.getParameter("surname");
       Character course = request.getParameter("course").charAt(0);
       Long studentNumber = Long.parseLong(request.getParameter("studentNumber"));
       
       Student student = createStudent(name,surname,course,studentNumber);
       sfl.create(student);
      
       
        RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
        disp.forward(request, response);
    }

    private Student createStudent(String name, String surname, Character course, Long studentNumber) {
    Student student = new Student();
    student.setName(name);
    student.setSurname(surname);
    student.setCourse(course);
    student.setStudentNumber(studentNumber);
    return student;
    }
    

}
