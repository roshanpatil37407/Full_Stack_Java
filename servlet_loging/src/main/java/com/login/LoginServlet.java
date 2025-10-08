package com.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Hardcoded credentials for simplicity
        if("admin".equals(username) && "1234".equals(password)) {
            
            // Create session and store user info
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            // Set session timeout (5 minutes)
            session.setMaxInactiveInterval(5*60);

            // Redirect to Welcome page
            response.sendRedirect("welcome");
        } else {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h2>Invalid credentials. Please try again.</h2>");
            out.println("<a href='login.html'>Back to Login</a>");
        }
    }
}
