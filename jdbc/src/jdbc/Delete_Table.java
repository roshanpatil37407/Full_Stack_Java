package jdbc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class Delete_Table {

    public static void main(String[] args) {
        try {
        
            Class.forName("com.mysql.cj.jdbc.Driver");

            
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Roshu", "root", "root");

            Scanner sc = new Scanner(System.in);

            System.out.println("Enter Employee ID to delete: ");
            int id = sc.nextInt();

           
           
            String deleteQuery = "DELETE FROM employee_new WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(deleteQuery);

          
            ps.setInt(1, id);

        
            int rs = ps.executeUpdate();

            if (rs > 0) {
                System.out.println("Employee salary delete successfully!");
            } else {
                System.out.println(" No employee found with ID " + id);
            }

            sc.close();
            con.close();

        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }
}
