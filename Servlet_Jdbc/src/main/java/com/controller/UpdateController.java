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

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        int Rollno = Integer.parseInt(request.getParameter("Rollno"));
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String city = request.getParameter("city");
        String bdate = request.getParameter("bdate");
        String email = request.getParameter("email");
        String phoneno = request.getParameter("phoneno");

        Student st = new Student(Rollno, name, password, city, bdate, email, phoneno);
        int status = StudentDAO.UpdateData(st);

        if(status > 0) {
            pw.print("<script>alert('Updated successfully...')</script>");
            RequestDispatcher rd = request.getRequestDispatcher("view.html");
            rd.include(request, response);
        } else {
            pw.print("<script>alert('Something went wrong')</script>");
            RequestDispatcher rd = request.getRequestDispatcher("register.html");
            rd.include(request, response);
        }
    }
}
