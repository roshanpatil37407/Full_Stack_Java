package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import dao.StudentDao;
import model.Student;

@WebServlet("/edit")
public class EditServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Show edit form
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sid = request.getParameter("id");
        if (sid != null) {
            int id = Integer.parseInt(sid);
            Student s = StudentDao.getStudentById(id);
            request.setAttribute("student", s);
            RequestDispatcher rd = request.getRequestDispatcher("editStudent.jsp");
            rd.forward(request, response);
        } else {
            // no id passed, redirect to view
            response.sendRedirect("view");
        }
    }

    // Handle update
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sid = request.getParameter("id");
        int id = Integer.parseInt(sid);
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");

        Student s = new Student();
        s.setId(id);
        s.setName(name);
        s.setEmail(email);
        s.setCourse(course);

        StudentDao.update(s);
        response.sendRedirect("view");
    }
}
