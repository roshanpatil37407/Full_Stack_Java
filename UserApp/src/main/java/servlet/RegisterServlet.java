package servlet;

import dao.UserDao;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String pass = req.getParameter("password");

        User u = new User(0, pass, pass, pass);
        u.setName(name);
        u.setEmail(email);
        u.setPassword(pass);

        UserDao dao = new UserDao();
        int status = dao.registerUser(u);

        if(status > 0) {
            out.println("<h2>Registration Successful!</h2>");
        } else {
            out.println("<h2>Failed. Try Again.</h2>");
        }
    }
}
