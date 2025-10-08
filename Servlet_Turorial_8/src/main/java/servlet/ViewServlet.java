package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import dao.StudentDao;
import model.Student;

@WebServlet("/view")
public class ViewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Student> list = StudentDao.getAllStudents();
        request.setAttribute("list", list);
        RequestDispatcher rd = request.getRequestDispatcher("viewStudent.jsp");
        rd.forward(request, response);
    }
}
