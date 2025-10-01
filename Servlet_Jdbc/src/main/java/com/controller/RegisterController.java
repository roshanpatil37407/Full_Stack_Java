package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.DAO.StudentDAO;
import com.model.Student;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String city = request.getParameter("city");
        String bdate = request.getParameter("bdate");
        String email = request.getParameter("email");
        String phoneno = request.getParameter("phoneno");

        Student st = new Student(0, name, password, city, bdate, email, phoneno);
        int status = StudentDAO.insertStud(st);

        if(status > 0) {
            pw.print("<script>alert('Inserted successfully...')</script>");
            RequestDispatcher rd = request.getRequestDispatcher("view.html"); // redirect to view page
            rd.include(request, response);
        } else {
            pw.print("<script>alert('Something went wrong')</script>");
            RequestDispatcher rd = request.getRequestDispatcher("register.html");
            rd.include(request, response);
        }
    }
}
