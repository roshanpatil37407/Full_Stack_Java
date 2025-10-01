package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.DAO.StudentDAO;
import com.model.Student;

@WebServlet("/EditController")
public class EditController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        int Rollno = Integer.parseInt(request.getParameter("Rollno"));
        Student st = StudentDAO.searchStudentByRollno(Rollno);

        pw.print("<h1>Edit Student Information</h1>");
        pw.print("<form method='post' action='UpdateController'>");
        pw.print("<table>");
        pw.print("<tr><td><input type='hidden' name='Rollno' value='" + st.getRollno() + "'></td></tr>");
        pw.print("<tr><th>Name:</th><td><input type='text' name='name' value='" + st.getName() + "'></td></tr>");
        pw.print("<tr><th>Password:</th><td><input type='text' name='password' value='" + st.getPassword() + "'></td></tr>");
        pw.print("<tr><th>City:</th><td><input type='text' name='city' value='" + st.getCity() + "'></td></tr>");
        pw.print("<tr><th>Birthdate:</th><td><input type='date' name='bdate' value='" + st.getBdate() + "'></td></tr>");
        pw.print("<tr><th>Email:</th><td><input type='email' name='email' value='" + st.getEmail() + "'></td></tr>");
        pw.print("<tr><th>Phone:</th><td><input type='text' name='phoneno' value='" + st.getPhoneno() + "'></td></tr>");
        pw.print("<tr><td colspan='2'><input type='submit' value='Update'></td></tr>");
        pw.print("</table>");
        pw.print("</form>");
    }
}
