package may_2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentDao {

    // Get database connection
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/rita?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC",
                "root", "root");
            System.out.println("Database connected successfully!");
        } catch (ClassNotFoundException e) {
            System.out.println("DB Driver class not found: " + e);
        } catch (SQLException e) {
            System.out.println("DB Connection Error: " + e);
        } catch (Exception e) {
            System.out.println("Unexpected DB Connection Error: " + e);
        }
        return con;
    }

    // Insert student data
    public static int insertStud(Student st) {
        int status = 0;
        String sql = "INSERT INTO students(fullname, email, password, course) VALUES(?,?,?,?)";

        try (Connection con = getConnection()) {
            if (con == null) {
                System.out.println("Connection is null! Aborting insert.");
                return 0;
            }

            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, st.getFullName());
                ps.setString(2, st.getEmail());
                ps.setString(3, st.getPassword());
                ps.setString(4, st.getCourse());

                status = ps.executeUpdate();
                System.out.println("Rows inserted: " + status);
            }
        } catch (SQLException e) {
            System.out.println("Insert Error: " + e);
        } catch (Exception e) {
            System.out.println("Unexpected Insert Error: " + e);
        }
        return status;
    }

    // Validate login
    public static boolean validateLogin(String email, String password) {
        boolean valid = false;
        String sql = "SELECT 1 FROM students WHERE email=? AND password=? LIMIT 1";

        try (Connection con = getConnection()) {
            if (con == null) {
                System.out.println("Connection is null! Aborting login check.");
                return false;
            }

            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, email);
                ps.setString(2, password);

                try (ResultSet rs = ps.executeQuery()) {
                    valid = rs.next();
                }
            }
        } catch (SQLException e) {
            System.out.println("Login Error: " + e);
        } catch (Exception e) {
            System.out.println("Unexpected Login Error: " + e);
        }
        return valid;
    }
}
