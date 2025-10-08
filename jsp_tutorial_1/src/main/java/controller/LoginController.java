package controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.LoginDao;
import jsp_tutorial_1.Login;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Set response type
        response.setContentType("text/html;charset=ISO-8859-1");

        // Get form parameters
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Create Login bean
        Login lb = new Login(username, password);

        // Insert into DB using DAO
        int status = LoginDao.insertLogin(lb);

        // Navigation based on insertion success
        if (status > 0) {
            RequestDispatcher rd = request.getRequestDispatcher("index.html");
            rd.include(request, response);
        } else {
            response.getWriter().println("<p style='color:red;'>Login failed. Try again.</p>");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
        }
    }
}
