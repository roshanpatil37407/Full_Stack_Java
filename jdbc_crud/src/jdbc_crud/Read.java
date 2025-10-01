package jdbc_crud;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Read {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        
        // Load JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // Connect to Database (db name = jdbc, user = root, password = root)
        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/jdbc", "root", "root");
        
        // Select Query
        PreparedStatement ps = con.prepareStatement("SELECT * FROM emp");
        ResultSet rs = ps.executeQuery();

        // Loop through rows
        while (rs.next()) {
            int id = rs.getInt(1);        // column 1: id
            String name = rs.getString(2); // column 2: name
            int salary = rs.getInt(3);    // column 3: salary
            
            System.out.println("-----------------------------------------------------");
            System.out.println("ID: " + id + " ||  Name: " + name + " || Salary: " + salary);
            System.out.println("-----------------------------------------------------");
        }
        
        // Close resources
        rs.close();
        ps.close();
        con.close();
    }
}
