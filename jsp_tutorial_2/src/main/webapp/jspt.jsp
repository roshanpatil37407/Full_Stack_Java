<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Tags Example</title>
</head>
<body>


<c:out value="Welcome to JSTL" />
<br><br>

<c:set var="add" value="${50000 + 10000}" />
<c:out value="${add}" />
<br><br>


<c:remove var="add" />

After remove: <c:out value="${add}" />
<br><br>


<c:catch var="Exc">
    <%
      
        int error = 100 / 0;
    %>
</c:catch>


<c:if test="${Exc != null}">
    <p style="color: red;">Type of Exception: ${Exc}</p>
</c:if>

</body>
</html>
