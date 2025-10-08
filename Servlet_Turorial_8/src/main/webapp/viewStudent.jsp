<%@ page import="java.util.*, model.Student" %>
<html>
<head>
    <title>View Students</title>
</head>
<body>
    <h2>Student List</h2>
    <table border="1" cellpadding="10">
        <tr>
            <th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Action</th>
        </tr>
        <%
            List<Student> list = (List<Student>) request.getAttribute("list");
            if (list != null) {
                for (Student s : list) {
        %>
        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getCourse() %></td>
            <td>
                <a href="edit?id=<%= s.getId() %>">Edit</a> |
                <a href="delete?id=<%= s.getId() %>" onclick="return confirm('Are you sure?');">Delete</a>
            </td>
        </tr>
        <% 
                } // end for
            } // end if
        %>
    </table>
    <br>
    <a href="addStudent.html">Add New Student</a>
</body>
</html>
