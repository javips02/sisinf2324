<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>ReaderRank</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>    
    <style>
        body {
            margin: 0;
            background: #819165;
        }
        .titulo{
            margin-left: 22%;
            top: -14%;
            position: relative;
            text-align: left;
            font-family: 'Poppins SemiBold';
            font-size: 70px;
            font-style: bold;
            color: white;
        }
         .subtitulo{
             margin-left: 10%;
             margin-top: 10%; 
             top: -32%; 
             position: relative; 
             text-align: left; 
             font-family: 'Poppins SemiBold'; 
             font-size: 35px; 
 	         font-style: bold; 
             color: white; 
         }
         .subtitulo2{
             margin-left: 10%;
             margin-top: -16%; 
             position: relative; 
             text-align: left; 
             font-family: 'Poppins SemiBold'; 
             font-size: 30px; 
 	         font-style: bold; 
             color: white; 
         }
         .subtitulo3{
             margin-left: 55%;
             margin-top: -5.7%; 
             position: relative; 
             text-align: left; 
             font-family: 'Poppins SemiBold'; 
             font-size: 30px; 
 	         font-style: bold; 
             color: white; 
         } 
        .texto{
            font-family: 'Poppins SemiBold';
            font-size: 35px;
            color: white;
            margin-top: 23%;
            margin-left: 22%;
        }
        .texto2{
            font-family: 'Poppins SemiBold';
            font-size: 35px;
            color: white;
            margin-top: -7%;
            margin-left: 67%;
        }
        .container{
            display: flex; /* Habilita flexbox */
            flex-direction: column; /* Apila elementos verticalmente */
            height: 100vh;
            background-repeat: no-repeat;
            background-size: cover;
/*          background-image: url('u22.png'); */
/* 			background: #56BE85; */
        }
        /* Pseudoelemento para aplicar el filtro */
        .container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
/*          background-color: rgba(255, 255, 255, 0.5); /* Fondo negro semi transparente */ */
/*          filter: brightness(40%); /* Ajusta el valor según tus preferencias (porcentaje) */ */
/* 			background: #56BE85;         */
        }
        .boton-personalizado {
			background-color: #333; /* Color de fondo negro */
            color: #fff; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 50px; /* Esquinas redondeadas */   
            font-size: 35px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            cursor: pointer; /* Cambia el cursor al pasar el ratón */
            width: 50%;
            text-align: center;
            justify-content: center; 
            padding: 30px 20px; /* Relleno interno para ajustar el ancho */
            margin-top: 2%;
            margin-left: 24%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-personalizado:hover {
            background-color: #555; /* Nuevo color de fondo al pasar el ratón */
        }
         .fila {
            margin-top: 0%;
            margin-left: 0%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
         }
         .cuadrado-verde {
   			width: 700;
    		height: 430;
    		background-color: #68EAA3;
    		position: absolute;  
    		margin-top:	0%;
    		margin-left: 0%;
    		box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
		}
		.star{ 
             cursor: pointer; 
             margin-left: -4%; 
             margin-top: 0.5%; 
/*              margin-right: 10%;  */
             width: 3%; 
             height: 50%;
         }
         .boton-personalizado3 {
			background-color: #5AC18C; /* Color de fondo negro */
            color: #fff; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 99px; /* Esquinas redondeadas */   
            font-size: 25px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            cursor: pointer; /* Cambia el cursor al pasar el ratón */
            width: 70%;
            text-align: center;
            justify-content: center; 
            padding: 10px 15px; /* Relleno interno para ajustar el ancho */
            margin-top: 0%;
            margin-left: 0%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-personalizado3:hover {
            background-color: #666; /* Nuevo color de fondo al pasar el ratón */
        }
        .boton-personalizado4 {
			background-color: #AFC4B9; /* Color de fondo negro */
            color: #fff; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 99px; /* Esquinas redondeadas */   
            font-size: 25px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            cursor: pointer; /* Cambia el cursor al pasar el ratón */
            width: 70%;
            text-align: center;
            justify-content: center; 
            padding: 10px 15px; /* Relleno interno para ajustar el ancho */
            margin-top: 0%;
            margin-left: 0%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-personalizado4:hover {
            background-color: #666; /* Nuevo color de fondo al pasar el ratón */
        }
        .boton-recompensa {
			background-color: #5AC18C; /* Color de fondo negro */
            color: #fff; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 99px; /* Esquinas redondeadas */   
            font-size: 25px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            cursor: pointer; /* Cambia el cursor al pasar el ratón */
            width: 10%;
            text-align: left;
            justify-content: center; 
            padding: 10px 15px; /* Relleno interno para ajustar el ancho */
            margin-top: 0%;
            margin-left: 1%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-recompensa:hover {
            background-color: #666; /* Nuevo color de fondo al pasar el ratón */
        }
        .boton-recompensa2 {
			background-color: #5AC18C; /* Color de fondo negro */
            color: #fff; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 99px; /* Esquinas redondeadas */   
            font-size: 25px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            cursor: pointer; /* Cambia el cursor al pasar el ratón */
            width: 10%;
            text-align: left;
            justify-content: center; 
            padding: 10px 15px; /* Relleno interno para ajustar el ancho */
            margin-top: 0%;
            margin-left: 5%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-recompensa2:hover {
            background-color: #666; /* Nuevo color de fondo al pasar el ratón */
        }
        .boton-recompensa3 {
			background-color: #5AC18C; /* Color de fondo negro */
            color: #fff; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 99px; /* Esquinas redondeadas */   
            font-size: 25px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            cursor: pointer; /* Cambia el cursor al pasar el ratón */
            width: 10%;
            text-align: left;
            justify-content: center; 
            padding: 10px 15px; /* Relleno interno para ajustar el ancho */
            margin-top: 0%;
            margin-left: 5%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-recompensa3:hover {
            background-color: #666; /* Nuevo color de fondo al pasar el ratón */
        }
        .preguntas {
        	margin-top: -5%;
            margin-left: 20%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
        }
        .preguntas2 {
        	margin-top: -0.5%;
            margin-left: 20%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
        }
        .preguntas3 {
        	margin-top: 2.5%;
            margin-left: 20%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
        }
        .preguntas4 {
        	margin-top: -0.5%;
            margin-left: 20%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
        }
        .preguntas5 {
        	margin-top: 2.5%;
            margin-left: 20%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
        }
        .preguntas6 {
        	margin-top: -0.5%;
            margin-left: 20%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
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
			margin: -50px auto 120px auto;
			width: 60%; /* Ajusta el ancho del botón al 50% del contenedor .boton-seleccion */
		  	height: 15%; /* Ajusta la altura del botón al 100% del contenedor .boton-seleccion */
		}

    </style>
  </head>
  <body>
    <div class="container">
        <div class="fila">
            <p class="titulo">PREGUNTAS DE READER RANK</p>
        </div>
        
        <div class="preguntas">
            <p class="boton-personalizado3">Pregunta número 1 de Reader Rank</p>
            <p class="boton-recompensa">Máx. 2</p>
            <img src="img/Gold_Star.png" alt="" class="star">
        </div>
        
        <div class="preguntas2">
            <p class="boton-personalizado4">Escriba su respuesta</p>
        </div>
        
        <div class="preguntas3">
            <p class="boton-personalizado3">Pregunta número 2 de Reader Rank</p>
            <p class="boton-recompensa">Máx. 2</p>
            <img src="img/Gold_Star.png" alt="" class="star">
        </div>
        
        <div class="preguntas4">
            <p class="boton-personalizado4">Escriba su respuesta</p>
        </div>
        
        <div class="preguntas5">
            <p class="boton-personalizado3">Pregunta número 3 de Reader Rank</p>
            <p class="boton-recompensa">Máx. 2</p>
            <img src="img/Gold_Star.png" alt="" class="star">
        </div>
        
        <div class="preguntas6">
            <p class="boton-personalizado4">Escriba su respuesta</p>
        </div>
        
		<a href="menu_principal.jsp">
  				<button class="boton-personalizado">Acabar Quiz</button>
		</a>
		
		
        
<!--         <div class="subtitulo"> -->
<!--             <p>Elija una de las dos opciones para responder las preguntas:</p>      	 -->
<!--         </div> -->
        
<!--         <div class="subtitulo2"> -->
<!--             <p>PREGUNTAS READER RANK:</p> -->
<!--             <p class="cuadrado-verde"></p> -->
<!--         </div> -->
        
<!--         <div class="subtitulo3"> -->
<!--             <p>PREGUNTAS DEL ESCRITOR:</p> -->
<!--             <p class="cuadrado-verde"></p> -->
<!--         </div> -->
        
<!--         <div class="texto"> -->
<!--             <p>Máximo 20</p> -->
<!--             <img src="Gold_Star.png" alt="" class="star" onclick="irItemLibro()"> -->
<!--         </div> -->
        
<!--         <div class="texto2"> -->
<!--             <p>Máximo 100</p> -->
<!--             <img src="Gold_Star.png" alt="" class="star2" onclick="irItemLibro()">        -->
<!--         </div> -->
        
        
                    
    </div>
    <script>
    	let listElements = document.querySelectorAll('.list_button--click');
    	listElements.forEach(listElement =>{
    		listElement.addEventListener('click', ()=>{
    			listElement.classList.toggle('arrow');
    			let height = 0;
    			let menu = listElement.nextElementSibling;
    			if(menu.clientHeight == "0"){
    				height=menu.scrollHeight;
    			}
    			menu.style.height = height+"px";
    		})
    	});
    	
// 	    function cerrarMenu() {
// 	        document.getElementById('menu').style.width = '0%';
// 	    }
	
// 	    function abrirMenu() {
// 	        document.getElementById('menu').style.width = '30%';
// 	    }

	    function irItemLibro() {
	        window.location.href = 'item_libro.jsp';
	    }
    </script>
    <script>
	  document.getElementById("iniciar-sesion").addEventListener("click", function() {
	    window.location.href = "iniciar_sesion.jsp"; // Reemplaza "tu_pagina_destino.jsp" con la URL de la página a la que deseas dirigir al usuario.
	  });
	</script>
  </body>
</html>
