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
            margin-left: 30%;
            top: -14%;
            position: relative;
            text-align: left;
            font-family: 'Poppins SemiBold';
            font-size: 60px;
            font-style: bold;
            color: white;
        }
        .titulo2{
            margin-left: 20%;
            top: -14%;
            position: relative;
            text-align: left;
            font-family: 'Poppins SemiBold';
            font-size: 40px;
            font-style: bold;
            color: white;
        }
        .titulo3{
            margin-left: 20%;
            top: -14%;
            position: relative;
            text-align: left;
            font-family: 'Poppins SemiBold';
            font-size: 30px;
            font-style: bold;
            color: white;
        }
         .titulo4{
            margin-left: 2%;
            top: -14%;
            position: relative;
            text-align: left;
            font-family: 'Poppins SemiBold';
            font-size: 30px;
            font-style: bold;
            color: white;
        }
        .titulo5{
            margin-left: 1%;
            top: -14%;
            position: relative;
            text-align: left;
            font-family: 'Poppins SemiBold';
            font-size: 30px;
            font-style: bold;
            color: white;
        }
        .titulo6{
            margin-left: 1%;
            top: -14%;
            position: relative;
            text-align: left;
            font-family: 'Poppins SemiBold';
            font-size: 30px;
            font-style: bold;
            color: white;
        }
        .titulo7{
            margin-left: 30%;
            top: -2%;
            position: relative;
            text-align: left;
            font-family: 'Poppins SemiBold';
            font-size: 50px;
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
        .fila1 {
            margin-top: -6%;
            margin-left: 25%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
        }
        .fila2 {
            margin-top: 2%;
            margin-left: 0%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
        }
        .fila3 {
            margin-top: 2%;
            margin-left: 0%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: left;
        }
        .done{ 
             cursor: pointer; 
             margin-left: 10%; 
             margin-top: -1%; 
/*              margin-right: 10%;  */
             width: 12%; 
             height: 58%;
             filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */ 
             
         }
         .remove{ 
             cursor: pointer; 
             margin-left: 32%; 
             margin-top: -0.25%; 
/*              margin-right: 10%;  */
             width: 10%; 
             height: 40%;
             filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */ 
             
         }
         .close{ 
             cursor: pointer; 
             margin-left: 32%; 
             margin-top: -0.25%; 
/*              margin-right: 10%;  */
             width: 10%; 
             height: 40%;
             filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */ 
             
         }
         .circulo-verde {
			 width: 100px; /* Ajusta el ancho del círculo */
			 height: 100px; /* Ajusta la altura del círculo para que coincida */
			 background-color: #ACC08B; /* Color verde */
			 border-radius: 50%; /* Esto hace que el elemento sea un círculo */
			 box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5); /* Sombra con desplazamiento, desenfoque y opacidad */
			 margin-top: -9.5%;
			 margin-left: 34.25%;
		 } 
		 .circulo-naranja {
			 width: 100px; /* Ajusta el ancho del círculo */
			 height: 100px; /* Ajusta la altura del círculo para que coincida */
			 background-color: #CEB56B; /* Color verde */
			 border-radius: 50%; /* Esto hace que el elemento sea un círculo */
			 box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5); /* Sombra con desplazamiento, desenfoque y opacidad */
			 margin-top: -11%;
			 margin-left: 34.25%;
		 } 
		 .circulo-rojo {
			 width: 100px; /* Ajusta el ancho del círculo */
			 height: 100px; /* Ajusta la altura del círculo para que coincida */
			 background-color: #DA8A88; /* Color verde */
			 border-radius: 50%; /* Esto hace que el elemento sea un círculo */
			 box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5); /* Sombra con desplazamiento, desenfoque y opacidad */
			 margin-top: -11%;
			 margin-left: 34.25%;
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
            margin-top: -2%;
            margin-left: 24%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-personalizado:hover {
            background-color: #555; /* Nuevo color de fondo al pasar el ratón */
        }
    </style>
  </head>
  <body>
    <div class="container">
        <div class="fila">
            <p class="titulo">PREGUNTAS DEL ESCRITOR</p>
        </div>
		
		<p class="titulo2">"Nombre del libro ("Preguntas Escritor/ReaderRank")"</p>
		<p class="titulo3">Usted ha respondido:</p>
		
		<div class="fila1">
			<img src="img/done.svg" alt="" class="done">
			<p class="titulo4">"X" preguntas respondidas adecuadamente</p>
        </div>
		<div class="circulo-verde"></div>
		
		<div class="fila2">
			<img src="img/remove.svg" alt="" class="remove">
			<p class="titulo5">"X" preguntas respondidas medianamente</p>
        </div>
		<div class="circulo-naranja"></div>
		
		<div class="fila3">
			<img src="img/close.svg" alt="" class="close">
			<p class="titulo6">"X" preguntas respondidas erroneamente</p>
        </div>
		<div class="circulo-rojo"></div>
		
        <p class="titulo7">Puntuación obtenida: 75/100</p>
        
  		<button class="boton-personalizado" alt="" onClick="irMP()">Volver al Inicio</button>

        
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

	    function irMP() {
	        window.location.href = 'menu_principal.jsp';
	    }
    </script>
    <script>
	  document.getElementById("iniciar-sesion").addEventListener("click", function() {
	    window.location.href = "iniciar_sesion.jsp"; // Reemplaza "tu_pagina_destino.jsp" con la URL de la página a la que deseas dirigir al usuario.
	  });
	</script>
  </body>
</html>
