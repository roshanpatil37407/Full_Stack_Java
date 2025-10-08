<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(120deg, #89f7fe 0%, #66a6ff 100%);
            font-family: 'Segoe UI', sans-serif;
        }
        .welcome-container {
            margin-top: 150px;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0px 4px 12px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>
    <div class="container welcome-container text-center">
        <div class="card p-5 bg-white">
            <h1 class="text-success mb-3">Welcome, <%= username %>!</h1>
            <p class="fs-5">You have successfully logged in. Enjoy your session.</p>
            <a href="login.jsp" class="btn btn-outline-danger mt-4">Log Out</a>
        </div>
    </div>
</body>
</html>
