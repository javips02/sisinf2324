<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>¡Crea tu cuenta en ReaderRank!</title>
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
            margin-top: 5px;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-personalizado:hover {
            background-color: #333; /* Nuevo color de fondo al pasar el ratón */
        }
        .campo1 {
        	margin-top: -3.5%;
        	margin-bottom: 4%;
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
			margin: -5% auto 8% auto;
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
  </head>
  <body>
	
	
	<div class = "container">
		<div class = "left">
			<div class="titulo">
	    		<p>ReaderRank</p>
			</div>
			<div class="boton-seleccion">
			  <button  class="botones" id="iniciar-sesion">INICIAR SESIÓN</button>
			  <button class="botones with-border" id="crear-cuenta">CREAR CUENTA</button>
			</div>
			<form action="Servlets/CrearCuentaServlet" method="POST">
				<p><input type="text" class="campo1" name="usuario" placeholder="Usuario"></p>
    			<p><input type="text" class="campo1" name="correoElectronico" placeholder="Correo electrónico"></p>
    			<p><input type="password" class="campo1" name="contrasena" placeholder="Contraseña"></p>
    			<p><input type="password" class="campo1" name="confirContrasena" placeholder="Confirmar contraseña"></p>
  				<button type="submit" class="boton-personalizado">CREAR CUENTA</button>
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
	<script>
	function crearCuenta() {
		console.log("Creando cuenta...");
	    var usuario = document.getElementById("usuarioLogin").value;
	    var contrasena = document.getElementById("contrasenaLogin").value;
	    var correo = document.getElementById("Correo").value;
	    var ccontrasena = document.getElementById("CContraseña").value;
	    console.log("Usuario:", usuario);
	    console.log("Contraseña:", contrasena);
	    console.log("Correo:", correo);
	    console.log("CContraseña:", ccontrasena);

	    // Realizar la solicitud AJAX
	    $.ajax({
	        type: "POST",
	        url: "/CrearCuentaServlet",
	        data: {
	            usuario: usuario,
	            contrasena: contrasena
	        },
	        success: function(response) {
	            // No necesitas realizar acciones adicionales en el cliente
	            // ya que las redirecciones se manejan en el servidor
	        },
	        error: function(error) {
	            console.error("Error en la solicitud AJAX", error);
	            alert("Error en la creaación de cuenta. Por favor, intenta nuevamente.");
	         	// Redirigir en caso de error
	            window.location.href = "Error.html";
	        }
	    });
	}
	</script>
  </body>
</html>