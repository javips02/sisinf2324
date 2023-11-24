<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="es.unizar.sisinf.grpB02.RRank.model.LibroVO" %>
<%@ page import="es.unizar.sisinf.grpB02.RRank.model.PersonaVO" %>
<html>
<head>
    <title>Resultados de la Búsqueda</title>
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #819165;
        }
        h1 {
            margin-left: 0%;
            margin-top: 5%;
            position: relative;
            text-align: center;
            font-family: 'Imprint MT Shadow';
            font-size: 90px;
            font-style: italic;
            color: white;
        }
        .resultado {
            margin-top: 20px;
            margin-left: 20%;
            width: 60%;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            color: #333;
            overflow: hidden; /* Asegura que el contenedor abarque el contenido, incluida la imagen */
            display: flex; /* Utiliza flexbox para disposición flexible */
        }
        .texto-resultados {
            flex-grow: 1; /* Permite que el texto ocupe el espacio restante */
        }
        .imagen-libro {
            max-width: 1000px; /* Ajusta el tamaño máximo de la imagen según tus necesidades */
            max-height: 1000px; /* Ajusta la altura máxima según tus necesidades */
            margin-left: 20px; /* Ajusta el margen izquierdo según tus necesidades */
            width: auto; /* Permite que el ancho se ajuste automáticamente al tamaño máximo */
    		height: auto; /* Permite que la altura se ajuste automáticamente al tamaño máximo */
            
        }
    </style>
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
                <div class="resultado">
                    <div class="texto-resultados">
                        <p>Libro: <%= libro.getTitulo() %></p>
                        <!-- Agrega más campos del libro según sea necesario -->
                    </div>
                    <img class="imagen-libro" src="img/${nombreImagen}" alt="Imagen del libro">
                </div>
                <%
            } else if (elemento instanceof PersonaVO) {
                PersonaVO persona = (PersonaVO) elemento;
                %>
                <div class="resultado">
                    <div class="texto-resultados">
                        <p>Persona: <%= persona.getNombreUsuario() %></p>
                        <!-- Agrega más campos de la persona según sea necesario -->
                    </div>
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
