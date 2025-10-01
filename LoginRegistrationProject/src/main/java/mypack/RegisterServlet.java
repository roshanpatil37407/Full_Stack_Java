package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private String dbURL = "jdbc:mysql://localhost:3306/userdbs";
    private String dbUser = "root";
    private String dbPass = "root"; 

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO users (name, email, username, password) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, username);
            ps.setString(4, password);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Registration Successful');");
                out.println("location='login.html';"); // redirect back to login
                out.println("</script>");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Registration Failed');");
                out.println("location='register.html';");
                out.println("</script>");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Error: "+ e.getMessage() +"');");
            out.println("location='register.html';");
            out.println("</script>");
        }
    }
}
