import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        String url = "jdbc:mysql://localhost:3306/userdb";
        String username = "root";
        String password = "root"; // Replace with your actual MySQL password

        Class.forName("com.mysql.cj.jdbc.Driver"); // Ensure driver is loaded
        return DriverManager.getConnection(url, username, password);
    }
}
