<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%
    String servletPath = request.getServletContext().getContextPath() + "/ServletLogin";
    out.println("URL del servlet: " + servletPath);
%> --%>
<html>
  <head>
    <title>¡Inicia sesión en ReaderRank!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>    
    <style>
        body {
            margin: 0;
        }
        .titulo{
        	margin-top: -5%;
        	text-align: center;
        	font-family: 'Imprint MT Shadow';
        	font-size: 90px;
        	font-style: italic;
        	color: white;
        }
        .bienvenida{
        	position: relative;
         	margin-left: 60px; 
     		margin-right: 60px;  
        	text-align: center;
        	text-align: justify;
        	font-family: 'Poppins SemiBold';
        	font-size: 40px;
        	color: #4B533D;
        }
        .unete{
        	position: relative;
        	margin-top: 60px;
         	margin-left: 60px; 
     		margin-right: 60px;  
        	text-align: center;
        	font-family: 'Poppins SemiBold';
        	font-size: 40px;
        	color: #4B533D;
        }
        .texto{
        	position: relative;
         	margin-left: 60px; 
     		margin-right: 60px;  
        	text-align: center;
        	text-align: justify;
        	font-family: 'Poppins SemiBold';
        	font-size: 30px;
        	color: #4B533D;
        }
        .texto_tick{
        	position: relative;
         	margin-left: 60px; 
     		margin-right: 60px;  
        	text-align: center;
        	text-align: justify;
        	font-family: 'Poppins SemiBold';
        	font-size: 30px;
        	color: #4B533D;
        }
        .container{
        	display: grid;
        	grid-template-columns: 1fr 1fr;
        	height: 100vh;
        	grid-template-columns: 60% 40%;
        	text-align: center;
        }
        .left{ 
        	background: #819165;
        	align-items: center; /* Centra verticalmente */
        }
        .right{ 
        	position: relative;
            
            align-items: center; /* Centra verticalmente */
        	background-color: #ACC08B;
        }
        .boton-personalizado {
			background-color: #000; /* Color de fondo negro */
            color: #fff; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 50px; /* Esquinas redondeadas */   
            font-size: 35px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            cursor: pointer; /* Cambia el cursor al pasar el ratón */
            width: 60%;
            text-align: center;
            justify-content: center; 
            padding: 10px 20px; /* Relleno interno para ajustar el ancho */
            margin-top: 91px;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-personalizado:hover {
            background-color: #333; /* Nuevo color de fondo al pasar el ratón */
        }
        .campo1 {
        	margin-top: -3.5%;
        	margin-bottom: 8%;
            background-color: #ACC08B;
            color: white; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 50px; /* Esquinas redondeadas */
            padding: 10px 20px; /* Relleno interno para ajustar el ancho */
            font-size: 35px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            width: 60%;
            
        }
        .boton-seleccion {
			background-color: #ACC08B; /* Color de fondo negro */
			color: #fff; /* Color de texto blanco */
			border: none; /* Sin borde */
			font-size: 35px; /* Tamaño de fuente */
			font-family: 'Poppins SemiBold';
			cursor: pointer; /* Cambia el cursor al pasar el ratón */
			text-align: center;
			display: flex;
			justify-content: center;
			margin: -5% auto 12% auto;
			width: 60%; /* Ajusta el ancho del botón al 50% del contenedor .boton-seleccion */
		  	height: 15%; /* Ajusta la altura del botón al 100% del contenedor .boton-seleccion */
		}
        .botones {
        	color: #fff; /* Color de texto blanco */
        	font-size: 35px; /* Tamaño de fuente */
			font-family: 'Poppins SemiBold';
		  	width: 50%; /* Ajusta el ancho del botón al 50% del contenedor .boton-seleccion */
		  	height: 100%; /* Ajusta la altura del botón al 100% del contenedor .boton-seleccion */
		  	border: none;
	 		background-color: transparent;
		  	cursor: pointer;
		}
		.with-border {
			border-bottom: 20px solid #4B533D;
		}
		input::placeholder {
			color: white; /* Cambia el color del placeholder */
		}
    </style>
    	<%-- SECCION SCRIPTS (PARA BIBLIOTECAS EXTERNAS) --%>
    	
     <%-- Importa SweetAlert (puedes descargarlo o utilizar la versión CDN) --%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <%-- Muestra el popup si hay un mensaje de error --%>
    <%
        String mensajeError = (String) request.getAttribute("mensajeError");
        if (mensajeError != null) {
    %>
        <script>
            // Muestra el popup utilizando SweetAlert
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: '<%= mensajeError %>',
            });
        </script>
    <%
        }
    %>
    
  </head>
  <body>
  
	<div class = "container">
		<div class = "left">
			<div class="titulo">
	    		<p>ReaderRank</p>
			</div>
			<div class="boton-seleccion">
			  <button  class="botones with-border" id="iniciar-sesion">INICIAR SESIÓN</button>
			  <button class="botones" id="crear-cuenta">CREAR CUENTA</button>
			</div>
			<form method="post" action="${pageContext.request.contextPath}/ServletLogin">
				<input type="text" name="usuarioLogin" class="campo1" placeholder="Usuario / Correo electrónico">
			    <input type="password" name="contrasenaLogin" class="campo1" placeholder="Contraseña">
			    <input type="submit" class="boton-personalizado" value="INICIAR SESIÓN">
			</form>
		</div>
		
		<div class = "right">
	    	<p class="bienvenida">Ventajas de registrarse en ReaderRank:</p>
	    	<p class="texto">Con nosotros lectura es igual a premios. ¡Así es! Cuantos más libros leas, más puntos obtendrás, que te servirán para subir puestos en los diferentes rankings. </p>
	    	<p class="texto">Los lectores mejor clasificados podrán disfrutar de:</p>
	    	<p class="texto_tick">
	    		<img src="img/u154.svg">&nbsp;
	    		Eventos y actividades exclusivas</p>
	    	<p class="texto_tick">
	    		<img src="img/u154.svg">&nbsp;
	    		Firma dedicada de libros</p>
	    	<p class="texto_tick">
	    		<img src="img/u154.svg">&nbsp;
	    		Descuentos, regalos y sorpresas</p>
	    	<p class="unete">¡Únete ya a ReaderRank!</p>
	    	
		</div>	
	</div>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script>
	  document.getElementById("crear-cuenta").addEventListener("click", function() {
	    window.location.href = "crear_cuenta.jsp"; // Reemplaza "tu_pagina_destino.jsp" con la URL de la página a la que deseas dirigir al usuario.
	  });
	</script>
	<script>
	  document.getElementById("iniciar-sesion").addEventListener("click", function() {
	    window.location.href = "iniciar_sesion.jsp"; // Reemplaza "tu_pagina_destino.jsp" con la URL de la página a la que deseas dirigir al usuario.
	  });
	</script>
  </body>
</html>