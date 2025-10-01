package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.DAO.StudentDAO;
import com.model.Student;

@WebServlet("/VeiwController")
public class VeiwController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        List<Student> li = StudentDAO.getstudData();

        pw.print("<h1>Student Records</h1>");
        pw.print("<table border='1'>");
        pw.print("<tr><th>Rollno</th><th>Name</th><th>Password</th><th>City</th><th>Birthdate</th><th>Email</th><th>Phone</th><th>Edit</th><th>Delete</th></tr>");

        for(Student st : li) {
            pw.print("<tr>");
            pw.print("<td>" + st.getRollno() + "</td>");
            pw.print("<td>" + st.getName() + "</td>");
            pw.print("<td>" + st.getPassword() + "</td>");
            pw.print("<td>" + st.getCity() + "</td>");
            pw.print("<td>" + st.getBdate() + "</td>");
            pw.print("<td>" + st.getEmail() + "</td>");
            pw.print("<td>" + st.getPhoneno() + "</td>");
            pw.print("<td><a href='EditController?Rollno=" + st.getRollno() + "'>Edit</a></td>");
            pw.print("<td><a href='DeleteController?rollno=" + st.getRollno() + "'>Delete</a></td>");
            pw.print("</tr>");
        }

        pw.print("</table>");
    }
}
