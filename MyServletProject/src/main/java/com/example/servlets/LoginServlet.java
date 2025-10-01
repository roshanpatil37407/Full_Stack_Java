package com.example.servlets;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // For demo: hardcoded admin credentials
    private static final String ADMIN_USER = "admin";
    private static final String ADMIN_PASS = "admin123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (ADMIN_USER.equals(username) && ADMIN_PASS.equals(password)) {
            HttpSession session = req.getSession(true);
            session.setAttribute("user", username); // mark logged in
            // redirect to registration form servlet
            resp.sendRedirect(req.getContextPath() + "/registerForm");
        } else {
            // failure -> back to login with error flag
            resp.sendRedirect(req.getContextPath() + "/login.html?error=1");
        }
    }

    // optional: block GET with redirect to login page
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect(req.getContextPath() + "/login.html");
    }
}
