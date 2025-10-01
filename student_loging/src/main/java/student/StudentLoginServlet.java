package student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/studentLogin")   
public class StudentLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public StudentLoginServlet() {}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        
     
    	response.setContentType("text/html");
		PrintWriter pw= response.getWriter();
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		pw.print("<br> username:"+username);
		pw.print("<br> password:"+password);
    }
}
