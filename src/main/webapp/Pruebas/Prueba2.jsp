<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Mi Página JSP</title>
</head>
<body>
    <h1>Hola desde mi página JSP</h1>
    <p>Esta es una página JSP dinámica.</p>
    <%
        String nombre = "Usuario";
    %>
    <p>Hola, <%= nombre %> desde JSP.</p>
</body>
</html>
