<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            margin-left: 15%;
            margin-right: 1%;
            width: 6%;
            height: 25%;
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
            margin-right: 5%;
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
		
		
    </style>
  </head>
   <title>Busqueda en ReaderRank</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>    
  <body>
  	
	<div class = "container">
		<div class="fila">
            <p class="titulo">ReaderRank</p>
            <img src="img/bx-male.svg" alt="" class="persona" onclick="irPerfil()">
            <img src="img/bx-x.svg" alt="" class="cruz" onclick="volverMenu()">
        </div>
		<%
			String valorCampo = request.getParameter("busqueda");
		%>
    <form method="get" action="${pageContext.request.contextPath}/busquedaServlet" >
        <input type="text" class="campo1" placeholder="¿QUÉ ESTÁ BUSCANDO?" name="searchTerm" required>   
        <!-- <button type="submit">Buscar</button> -->
    </form>
     <p class="linea-blanca"></p>
    	<div class="texto" id="searchResults"></div>
    	<!-- <div class="lupa">
    		 <img src="u27.svg">
		</div> -->
		
		<!-- 		CUADROS Y LIBROS DE LA HOJA DE BÚSQUEDA	 -->
		<!--<div class="libro1">
    		<p class="titulo3">La Odisea</p>
    		<p class="titulo32">Homero</p>
		</div>
		
		<div class="libro2">
    		<p class="titulo4">Homero</p>
    		<img src="" alt="" class="">
		</div>
		
		<div class="libro3">
    		<p class="titulo5">El italiano</p>
    		<p class="titulo52">Arturo Pérez-Reverte</p>
    		<img src="" alt="" class="">
		</div>
		
		<div class="libro4">
    		<p class="titulo6">1984</p>
    		<p class="titulo62">George Orwell</p>
    		<img src="" alt="" class="">
		</div>
		
		<div class="cuadrado-verde"></div>
		<img src="Imagenes Libros/LaOdiseaHomero.png" alt="" class="img1">
		
		<div class="cuadrado-verde2"></div>
		<img src="Imagenes Libros/ElItalianoArturoPR.png" alt="" class="img3">
		
		<div class="cuadrado-verde3"></div>
		<img src="Imagenes Libros/1984GeorgeOrwell.jpg" alt="" class="img4">
		
		<div class="circulo-verde"></div>
		<img src="Imagenes Libros/Homero.png" alt="" class="img2"> -->
		<div id="resultadosBusqueda"></div>
		
		
				
	</div>
	<script>
		function searchFunction() {
	        var input = document.getElementById("searchInput").value;
	        if (input === "") {
	            document.getElementById("searchResults").innerHTML = "";
	            return;
	        }
	
	        $.ajax({
	            type: 'POST',
	            url: 'searchResults.jsp',
	            data: { query: input },
	            success: function(response) {
	                document.getElementById("searchResults").innerHTML = response;
	            }
	        });
	    }
		
		function realizarBusqueda(terminoBusqueda) {
	        if (terminoBusqueda.length === 0) {
	            document.getElementById('resultadosBusqueda').innerHTML = ""; // Limpiar resultados si el campo está vacío
	        } else {
	            // Realizar petición al servidor para buscar en la base de datos
	            // Se puede usar AJAX para llamar a un servlet que maneje la búsqueda
	
	            // Ejemplo con jQuery
	            $.ajax({
	                type: 'POST',
	                url: 'BuscarDatosServlet', // Reemplaza con la URL correcta de tu servlet
	                data: { busqueda: terminoBusqueda },
	                success: function (data) {
	                    // Actualizar el div con los resultados de la búsqueda
	                    document.getElementById('resultadosBusqueda').innerHTML = data;
	                },
	                error: function (error) {
	                    console.log('Error en la búsqueda: ', error);
	                }
	            });
	        }
	    }
	    function irPerfil() {
	        window.location.href = 'perfil.jsp';
	    }
	
	    function volverMenu() {
	        window.location.href = 'menu_principal.jsp';
	    }
	</script>
  </body>
</html>