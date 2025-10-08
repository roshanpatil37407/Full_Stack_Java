package com.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if(session != null) {
            session.invalidate(); // Destroy session
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h2>You have successfully logged out.</h2>");
        out.println("<a href='login.html'>Login Again</a>");
    }
}
