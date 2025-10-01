<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>My First JSP Page</title>
</head>
<body>

<h1>This is my first JSP Page</h1>

<%-- Scriptlet tag --%>
<%
    int i = 1;
    while (i <= 5) {
        out.print("<br>" + i);
        i++;
    }
%>

<%-- Declaration tag --%>
<%! 
    int n = 5;
    public int sq(int n) {
        return n * n;
    }
%>

<%= sq(4) %>

<%
    String str = "madam";
%>

<h3>Define method to check palindrome</h3>

<%! 
    public boolean isPalindrome(String str) {
        StringBuilder rev = new StringBuilder();
        for (int i = str.length() - 1; i >= 0; i--) {
            rev.append(str.charAt(i));
        }
        return str.equals(rev.toString());
    }
%>

<h2>Given String : <%= str %></h2>
<h2>Check Palindrome : <%= isPalindrome(str) %></h2>


<h2>Check if a number is a palindrome</h2>

<form action="pal.jsp" method="get">
    <input type="text" name="num" placeholder="Enter a number">
    <input type="submit" value="Check">
</form>


</body>
</html>
