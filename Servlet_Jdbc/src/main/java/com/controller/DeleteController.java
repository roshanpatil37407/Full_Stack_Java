package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.DAO.StudentDAO;

@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Rollno = Integer.parseInt(request.getParameter("rollno"));
        int status = StudentDAO.deleteStudent(Rollno);

        if(status > 0) {
            response.sendRedirect("view.html");
        } else {
            response.getWriter().print("Error deleting record");
        }
    }
}
