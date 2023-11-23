<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Buscador</title>
    <!-- Puedes enlazar tu archivo CSS aquí si es necesario -->
    <!-- <link rel="stylesheet" type="text/css" href="tu_archivo_css.css"> -->
</head>
<body>
    <h1>Buscador</h1>
    <form method="get" action="${pageContext.request.contextPath}/busquedaServlet" >
        <label for="searchTerm">Buscar:</label>
        <input type="text" id="searchTerm" name="searchTerm" required>
        <button type="submit">Buscar</button>
    </form>

    <div>
        <!-- Aquí se mostrarán los resultados de la búsqueda -->
        <h2>Resultados:</h2>
        <ul>

        </ul>
    </div>
</body>
</html>
