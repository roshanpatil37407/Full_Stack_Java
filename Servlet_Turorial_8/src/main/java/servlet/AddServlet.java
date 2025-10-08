package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import dao.StudentDao;
import model.Student;

@WebServlet("/add")
public class AddServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");

        Student s = new Student();
        s.setName(name);
        s.setEmail(email);
        s.setCourse(course);

        int status = StudentDao.save(s);

        if (status > 0) {
            response.sendRedirect("view");
        } else {
            response.getWriter().println("Sorry! unable to save record.");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // redirect or show form
        response.sendRedirect("addStudent.html");
    }
}
