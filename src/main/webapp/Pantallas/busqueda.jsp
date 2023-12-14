<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="es.unizar.sisinf.grpB02.RRank.model.LibroVO" %>
<%@ page import="es.unizar.sisinf.grpB02.RRank.model.PersonaVO" %>
<html>
  <head>
    <title>ReaderRank</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            margin: 0;
        }
        .titulo{
        	margin-left: 38%;
            margin-right: 10%;
            position: relative;
            text-align: center;
            font-family: 'Imprint MT Shadow';
            font-size: 90px;
            font-style: italic;
            color: white;
        }
        .bienvenida{
            position: relative;
            text-align: center;
            margin-top: 100px;
            font-family: 'Bodoni MT Poster Compressed';
            font-size: 70px;
            color: white;
        }
        .texto{
            font-family: 'Poppins SemiBold';
            font-size: 35px;
            color: white;
        }
        .container{
            display: flex; /* Habilita flexbox */
            flex-direction: column; /* Apila elementos verticalmente */
            height: 100vh;
            background-repeat: no-repeat;
            background-size: cover;
            background: #819165;
        }

        .boton-personalizado {
            background-color: #000; /* Color de fondo negro */
            color: #fff; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 50px; /* Esquinas redondeadas */
            padding: 10px 200px; /* Relleno interno para el botón */
            font-size: 35px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            cursor: pointer; /* Cambia el cursor al pasar el ratón */
            margin-top: 10px;
            width: 60%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-personalizado:hover {
            background-color: #333; /* Nuevo color de fondo al pasar el ratón */
        }
        .persona{
            cursor: pointer;
            margin-left: 45%;
            margin-right: 0%;
            width: 55%;
            height: 55%;
            filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
        }
        .persona:hover {
            filter: brightness(70%);
        }
        .lupa{
            width: 3%;
            height: 15%;
            filter: brightness(100%); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
        }
        .fila {
            margin-top: -35px;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
            justify-content: center;
        }
        .campo1 {
        	margin-top: -2%;
            margin-left: 11%;
			margin-bottom: 1.5%;
            position: relative;
            background: transparent;
            color: white; /* Color de texto blanco */
            font-size: 35px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            width: 60%; 
            border: none;
            box-shadow: none; /* Quita la sombra */
        }
        .campo1::placeholder {
            color: white; /* Color blanco para el texto del placeholder */
        }
        .campo1:focus {
		    outline: none; /* Asegura que el contorno de enfoque se elimine al hacer clic */
		}
        .cruz{
            cursor: pointer;
            margin-left: 0%;
            margin-right: 3%;
            width: 7%;
            height: 30%;
            filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
        }
        .cruz:hover {
            filter: brightness(10%);
        }
        .linea-blanca {
			border: none; /* Elimina el borde por defecto del hr */
			border-top: 5px solid white; /* Establece un borde superior de 1 píxel de ancho y color blanco */
			width: 80%; /* Establece la anchura al 100% del contenedor */
			margin-left: 10%;
			margin-top: -1%;
		}      
        .barraBusq{
        	margin-left: 180px;
        	margin-top: -200px;
        	text-align: left;
        	font-family: 'Imprint MT Shadow';
        	font-size: 40px;
        	font-style: bold;
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
            max-width: 100px; /* Ajusta el tamaño máximo de la imagen según tus necesidades */
            max-height: 100px; /* Ajusta la altura máxima según tus necesidades */
            margin-left: 20px; /* Ajusta el margen izquierdo según tus necesidades */
            width: auto; /* Permite que el ancho se ajuste automáticamente al tamaño máximo */
    		height: auto; /* Permite que la altura se ajuste automáticamente al tamaño máximo */
            
        }
		
		
    </style>
  </head>
   <title>Busqueda en ReaderRank</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>    
  <body>
  	<%@ include file="menuHamburguesa.jsp" %>
  	<img src="${pageContext.request.contextPath}/Pantallas/img/u24.svg" alt="" class="tresRayas" onclick="abrirMenu()">
	<div class = "container">
		<div class="fila">
            <p class="titulo">ReaderRank</p>
            <form id="formPerfil" action="${pageContext.request.contextPath}/PerfilServlet" method="get">
			    <input type="submit" style="display: none;" /> <!-- Este input invisible se utiliza para enviar el formulario mediante JavaScript -->
			    <img src="${pageContext.request.contextPath}/Pantallas/img/bx-male.svg" alt="" class="persona" onclick="submitForm()">
			</form>
            <img src="img/bx-x.svg" alt="" class="cruz" onclick="volverMenu()">
        </div>
		<%
			String valorCampo = request.getParameter("busqueda");
		%>
    <form method="get" action="${pageContext.request.contextPath}/busquedaServlet" >
        <input type="text" class="campo1" placeholder="¿QUÉ ESTÁ BUSCANDO?" name="busqueda" required>   
        <!-- <button type="submit">Buscar</button> -->
    </form>
     <p class="linea-blanca"></p>
 	
 	
 	<h1 class="campo1"><br><br>Resultados de la Búsqueda</h1>

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
                    <img class="imagen-libro" src="Pantallas/img/<%=libro.getNombreImagen()%>" alt="Imagen del libro">
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