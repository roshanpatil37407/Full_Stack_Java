package jdbc_crud;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;  // ✅ make sure this is imported
import java.sql.SQLException;

public class Delete {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        
        // Load JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // Connect to Database (db name = jdbc, user = root, password = root)
        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/jdbc", "root", "root");
        
       
        PreparedStatement ps = con.prepareStatement(
                "delete from emp where id=1");
            int i = ps.executeUpdate();

           
            
            
        if (i > 0) {
            System.out.println("Success");
        } else {
            System.out.println("Fail");
        }
        
        
        
        // Close resources
        ps.close();
       
        con.close();
    }
}
