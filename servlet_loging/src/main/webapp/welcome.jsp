<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession s = request.getSession(false);
    String user = (s != null) ? (String) s.getAttribute("username") : null;

    if(user == null){
        response.sendRedirect("login.html");
    }
%>
<html>
<body>
    <h2>Welcome, <%= user %>!</h2>
    <a href="logout.jsp">Logout</a>
</body>
</html>
