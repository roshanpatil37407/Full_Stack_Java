package com.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/welcome")
public class WelcomeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if(session != null && session.getAttribute("username") != null) {
            String user = (String) session.getAttribute("username");
            out.println("<h2>Welcome, " + user + "!</h2>");
            out.println("<a href='logout'>Logout</a>");
        } else {
            out.println("<h2>Session expired. Please login again.</h2>");
            out.println("<a href='login.html'>Login</a>");
        }
    }
}
