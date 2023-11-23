<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="es.unizar.sisinf.grpB02.RRank.model.LibroVO" %>
<%@ page import="es.unizar.sisinf.grpB02.RRank.model.PersonaVO" %>
<html>
<head>
    <title>Resultados de la Búsqueda</title>
</head>
<body>

<h1>Resultados de la Búsqueda</h1>

<%
    List<Object> listaCompleta = (List<Object>) request.getAttribute("listaCompleta");

    if (listaCompleta != null && !listaCompleta.isEmpty()) {
        for (Object elemento : listaCompleta) {
            if (elemento instanceof LibroVO) {
                LibroVO libro = (LibroVO) elemento;
                %>
                <div>
                    <p>Libro: <%= libro.getTitulo() %></p>
                    <!-- Agrega más campos del libro según sea necesario -->
                </div>
                <%
            } else if (elemento instanceof PersonaVO) {
                PersonaVO persona = (PersonaVO) elemento;
                %>
                <div>
                    <p>Persona: <%= persona.getNombreUsuario() %></p>
                    <!-- Agrega más campos de la persona según sea necesario -->
                </div>
                <%
            }
        }
    } else {
        %>
        <p>No se encontraron resultados.</p>
        <%
    }
%>
</body>
</html>
