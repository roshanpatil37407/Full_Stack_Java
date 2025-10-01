package may_web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import may_2.StudentDao;

@WebServlet("/Loging") 
public class Loging extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        String email = request.getParameter("username"); // your form field
        String password = request.getParameter("password");

        if (StudentDao.validateLogin(email, password)) {
            pw.println("<h2 style='color:green;'>Login Successful!</h2>");
            RequestDispatcher rd = request.getRequestDispatcher("register.html");
            rd.include(request, response);
        } else {
            pw.println("<h2 style='color:red;'>Invalid Username or Password!</h2>");
            RequestDispatcher rd = request.getRequestDispatcher("loging.html");
            rd.include(request, response);
        }
    }
}
