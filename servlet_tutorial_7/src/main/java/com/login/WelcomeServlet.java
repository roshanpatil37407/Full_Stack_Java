package com.login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/welcome")
public class WelcomeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false); // don’t create new session

        if (session != null && session.getAttribute("username") != null) {
            String user = (String) session.getAttribute("username");
            request.setAttribute("user", user);
            RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
            rd.forward(request, response);
        } else {
            response.sendRedirect("login.html"); // redirect if no session
        }
    }
}
