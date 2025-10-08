package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jsp_tutorial_1.Login;

public class LoginDao {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "root");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static int insertLogin(Login lb) {
        int status = 0;
        try {
            Connection con = getConnection();
            String query = "INSERT INTO users (username, password) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, lb.getUsername());
            ps.setString(2, lb.getPassword());

            status = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
