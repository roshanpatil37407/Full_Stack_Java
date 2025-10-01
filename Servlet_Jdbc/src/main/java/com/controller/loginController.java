package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginController")
public class loginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username.equals("admin") && password.equals("admin")) {
            pw.print("<script>alert('Login successful...')</script>");
            RequestDispatcher rd = request.getRequestDispatcher("register.html");
            rd.include(request, response);
        } else {
            pw.print("<script>alert('Invalid username or password')</script>");
            RequestDispatcher rd = request.getRequestDispatcher("login.html");
            rd.include(request, response);
        }
    }
}
