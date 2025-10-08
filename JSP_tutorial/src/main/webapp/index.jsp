<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Example Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: yellow;
        }
        .container {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
        }
        h3 {
            color: #333;
        }
    </style>
</head>
<body>
<div class="container">
    <h3>Welcome to JSP Page</h3>

    <%-- Declaration block: Define variables and methods --%>
    <%! 
        String str = "Roshan Patil";
        int length = str.length();

        int sum(int a) {
            return a * a;
        }
    %>

    <%-- Scriptlet block: Execute logic --%>
    <%
        out.println("<p>Length of the name: " + length + "</p>");

        int a = 75;
        if(a > 100){
            out.println("<p>a is greater than 100</p>");
        } else {
            out.println("<p>a is less than or equal to 100</p>");
        }

        out.println("<p>Countdown from 10:</p><ul>");
        for(int i = 10; i >= 0; i--){
            out.println("<li>" + i + "</li>");
        }
        out.println("</ul>");
    %>

    <p>Square of a: <%= sum(a) %></p>
    
    
    <% 
    request.setAttribute("request_name","ram");
    %>
    <h3> Hellow ${requestScope.request_name}</h3>
    

    <% 
    session.setAttribute("s","ram");
    %>
    <h3> Hellow ${s}</h3>
    
</div>
</body>
</html>
