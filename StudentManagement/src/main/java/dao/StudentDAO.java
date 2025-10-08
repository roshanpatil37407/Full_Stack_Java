package dao;

import java.sql.*;
import java.util.*;
import model.Student;

public class StudentDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/student_db?useSSL=false&serverTimezone=UTC";
    private String jdbcUsername = "root";
    private String jdbcPassword = "root";  

    private static final String INSERT_STUDENT_SQL = 
        "INSERT INTO students (name, age, class, address) VALUES (?, ?, ?, ?);";
    private static final String SELECT_STUDENT_BY_ID = 
        "SELECT id, name, age, class, address FROM students WHERE id = ?;";
    private static final String SELECT_ALL_STUDENTS = 
        "SELECT * FROM students;";
    private static final String DELETE_STUDENT_SQL = 
        "DELETE FROM students WHERE id = ?;";
    private static final String UPDATE_STUDENT_SQL = 
        "UPDATE students SET name = ?, age = ?, class = ?, address = ? WHERE id = ?;";

    public StudentDAO() { }

    protected Connection getConnection() {
        Connection conn = null;
        try {
           
            Class.forName("com.mysql.cj.jdbc.Driver");

            
            conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            System.out.println("SQL Connection Error: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found. Include it in your library path!");
            e.printStackTrace();
        }
        return conn;
    }

    public void insertStudent(Student student) throws SQLException {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(INSERT_STUDENT_SQL)) {
            ps.setString(1, student.getName());
            ps.setInt(2, student.getAge());
            ps.setString(3, student.getStudentClass());
            ps.setString(4, student.getAddress());
            ps.executeUpdate();
        }
    }

    public Student selectStudent(int id) {
        Student student = null;
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_STUDENT_BY_ID)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String studentClass = rs.getString("class");
                String address = rs.getString("address");
                student = new Student(id, name, age, studentClass, address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }

    public List<Student> selectAllStudents() {
        List<Student> students = new ArrayList<>();
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_ALL_STUDENTS)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int age = rs.getInt("age");
                String studentClass = rs.getString("class");
                String address = rs.getString("address");
                students.add(new Student(id, name, age, studentClass, address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

    public boolean deleteStudent(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(DELETE_STUDENT_SQL)) {
            ps.setInt(1, id);
            rowDeleted = ps.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateStudent(Student student) throws SQLException {
        boolean rowUpdated;
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(UPDATE_STUDENT_SQL)) {
            ps.setString(1, student.getName());
            ps.setInt(2, student.getAge());
            ps.setString(3, student.getStudentClass());
            ps.setString(4, student.getAddress());
            ps.setInt(5, student.getId());
            rowUpdated = ps.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}
