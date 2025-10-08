<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: url('https://images.unsplash.com/photo-1503264116251-35a269479413') no-repeat center center fixed;
            background-size: cover;
            color: white;
        }
        .container {
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
        }
        .card {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 8px 16px rgba(0,0,0,0.3);
        }
        h1 {
            font-size: 32px;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
        }
    </style>
</head>
<body>

<% if (message != null) { %>
    <script>
        alert("<%= message %>");
    </script>
<% } %>

<div class="container">
    <div class="card">
        <h1>Welcome to Your Profile</h1>
        <p>You are logged in as <strong>admin</strong>.</p>
    </div>
</div>

</body>
</html>
