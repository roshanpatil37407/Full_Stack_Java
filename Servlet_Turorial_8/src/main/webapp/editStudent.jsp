<%@ page import="model.Student" %>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>
    <h2>Edit Student</h2>
    <%
        Student s = (Student) request.getAttribute("student");
        if (s != null) {
    %>
    <form action="edit" method="post">
        <input type="hidden" name="id" value="<%= s.getId() %>">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" value="<%= s.getName() %>" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" value="<%= s.getEmail() %>" required><br><br>

        <label for="course">Course:</label><br>
        <input type="text" id="course" name="course" value="<%= s.getCourse() %>" required><br><br>

        <input type="submit" value="Update">
    </form>
    <% } else { %>
    <p>No student data found.</p>
    <% } %>
    <br>
    <a href="view">Back to List</a>
</body>
</html>
