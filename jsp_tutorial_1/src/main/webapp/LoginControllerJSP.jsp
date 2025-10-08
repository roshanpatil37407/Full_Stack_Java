<%@ page language="java" 
    import="jsp_tutorial_1.Login, dao.LoginDao, javax.servlet.RequestDispatcher" 
    contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>LoginController</title>
</head>
<body>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Login lb = new Login(username, password);
    int status = LoginDao.insertLogin(lb);

    if (status > 0) {
        RequestDispatcher rd = request.getRequestDispatcher("index.html");
        rd.include(request, response);
    } else {
        out.print("<p style='color:red;'>Login failed. Try again.</p>");
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.include(request, response);
    }
%>

</body>
</html>
