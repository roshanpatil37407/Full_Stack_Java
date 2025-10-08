<%@ page import="model.Student" %>
<html>
<head><title>Edit Student</title></head>
<body>
    <h1>Edit Student</h1>
    <%
        Student s = (Student) request.getAttribute("student");
    %>
    <form action="update" method="post">
        <input type="hidden" name="id" value="<%= s.getId() %>" />
        Name: <input type="text" name="name" value="<%= s.getName() %>" required /><br/>
        Age: <input type="number" name="age" value="<%= s.getAge() %>" /><br/>
        Class: <input type="text" name="studentClass" value="<%= s.getStudentClass() %>" /><br/>
        Address: <input type="text" name="address" value="<%= s.getAddress() %>" /><br/>
        <input type="submit" value="Update" />
    </form>
    <a href="list">Back to list</a>
</body>
</html>
