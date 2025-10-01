 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Palindrome Result</title>
</head>
<body>

<%
String numStr = request.getParameter("num");

if (numStr != null && !numStr.trim().equals("")) {
    try {
        int num = Integer.parseInt(numStr);
        
        if (ispall(num)) {
            out.print(num + " is a palindrome.");
        } else {
            out.print(num + " is not a palindrome.");
        }

    } catch (NumberFormatException e) {
        out.print("Please enter a valid integer.");
    }
} else {
    out.print("No number was provided.");
}
%>

<%!
public boolean ispall(int num) {
    int rev = 0;
    int original = num;
    
    while (num != 0) {
        rev = rev * 10 + (num % 10);
        num /= 10;
    }

    return rev == original;
}
%>

</body>
</html>
 