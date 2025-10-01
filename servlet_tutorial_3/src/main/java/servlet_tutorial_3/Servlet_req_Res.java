package servlet_tutorial_3;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sumitform")
public class Servlet_req_Res extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        
        // Retrieve request parameters
        String name = req.getParameter("n");
        String email = req.getParameter("e");

        // Set response type
        resp.setContentType("text/html");
        
        // Write response
        PrintWriter out = resp.getWriter();
        out.println("<h2>Form Data Received</h2>");
        out.println("<p><b>Name:</b> " + name + "</p>");
        out.println("<p><b>Email:</b> " + email + "</p>");
    }
}
