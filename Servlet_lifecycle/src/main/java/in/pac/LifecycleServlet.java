package in.pac;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LifecycleServlet extends HttpServlet {

    public void init() throws ServletException {
        System.out.println("Servlet initialized - init()");
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h2>Hello, Servlet Lifecycle!</h2>");
        System.out.println("Processing request - service() / doGet()");
    }

    public void destroy() {
        System.out.println("Servlet destroyed - destroy()");
    }
}
