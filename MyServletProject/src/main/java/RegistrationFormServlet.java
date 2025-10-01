

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/registerForm")
public class RegistrationFormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession s = req.getSession(false);
        if (s == null || s.getAttribute("user") == null) {
            resp.sendRedirect(req.getContextPath() + "/login.html?loginRequired=1");
            return;
        }

        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();

        out.println("<!DOCTYPE html><html><head><meta charset='utf-8'><title>Registration</title></head><body>");
        out.println("<h2>Registration Form</h2>");
        out.println("<form method='post' action='register'>");
        out.println("First name: <input type='text' name='firstName' required><br><br>");
        out.println("Last name: <input type='text' name='lastName'><br><br>");
        out.println("Email: <input type='email' name='email' required><br><br>");
        out.println("Username: <input type='text' name='username' required><br><br>");
        out.println("Password: <input type='password' name='password' required><br><br>");
        out.println("Gender: <label><input type='radio' name='gender' value='Male'>Male</label>");
        out.println("<label><input type='radio' name='gender' value='Female'>Female</label><br><br>");
        out.println("Country: <input type='text' name='country'><br><br>");
        out.println("<button type='submit'>Register</button>");
        out.println("</form>");
        out.println("<p><a href='" + req.getContextPath() + "/login.html'>Logout</a></p>");
        out.println("</body></html>");
    }
}
