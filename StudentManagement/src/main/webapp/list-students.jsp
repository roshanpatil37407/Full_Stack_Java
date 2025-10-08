<%@ page import="java.util.*, model.Student" %>
<html>
<head>
    <title>List Students</title>
</head>
<body>
    <h1>Students</h1>
    <a href="add">Add New Student</a>
    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>ID</th><th>Name</th><th>Age</th><th>Class</th><th>Address</th><th>Actions</th>
        </tr>
        <%
            List<Student> list = (List<Student>) request.getAttribute("listStudents");
            if (list != null) {
                for (Student s : list) {
        %>
        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getAge() %></td>
            <td><%= s.getStudentClass() %></td>
            <td><%= s.getAddress() %></td>
            <td>
                <a href="edit?id=<%= s.getId() %>">Edit</a>
                |
                <a href="delete?id=<%= s.getId() %>" 
                   onclick="return confirm('Are you sure?');">Delete</a>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
</body>
</html>
