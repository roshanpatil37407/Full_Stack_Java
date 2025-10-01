package Servlet_tutorial;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        System.out.println("I am in Register Servlet doGet method!");

        response.setContentType("text/html");
        response.getWriter().println("<h2>Welcome to Register Page</h2>");
    }
}
