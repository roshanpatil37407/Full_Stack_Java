import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection conn = DBConnection.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement(
                "SELECT * FROM users WHERE username=? AND password=?"
            );
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // Redirect to registration page
                response.sendRedirect("register.html");
            } else {
                // Login failed
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<h3>Invalid credentials</h3>");
                out.println("<a href='login.html'>Try Again</a>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
