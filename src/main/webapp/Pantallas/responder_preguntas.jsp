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
            margin-left: 17%;
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
/*         .tresRayas{ */
/*             cursor: pointer; */
/*             margin-left: 4%; */
/*             margin-right: 595px; */
/*             margin-top: 45px; */
/*             width: 2.5%; */
/*             height: 8%; */
/*             filter: brightness(100%); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
/*         } */
/*         .tresRayas:hover { */
/*             filter: brightness(70%); */
/*         } */
/*         .circulos { */
/*         	margin-top: 0%; */
/*         	margin-left: 0%; */
/*         } */
		.circulo-ver {
			width: 3%; /* Ajusta el ancho del círculo */
			height: 22%; /* Ajusta la altura del círculo para que coincida */
			background-color: #ACC08B; /* Relleno de color verde */
 			border: 4px solid #ACC08B; /* Borde blanco de 5px */
			border-radius: 50%; /* Esto hace que el elemento sea un círculo */
 			box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5); /* Sombra con desplazamiento, desenfoque y opacidad */
			margin-top: 3%;
			margin-left: 3%;
		}
		.linea-blanca {
			border: none; /* Elimina el borde por defecto del hr */
			border-top: 6px solid #ACC08B; /* Establece un borde superior de 2 píxeles de ancho y color blanco */
			width: 90%; /* Establece la anchura al 80% del contenedor */
			margin-left: -28%; /* Centra la línea horizontal */
			margin-top: -2%; /* Centra la línea horizontal */
		}
		.linea-blanca2 {
			border: none; /* Elimina el borde por defecto del hr */
			border-top: 6px solid #ACC08B; /* Establece un borde superior de 2 píxeles de ancho y color blanco */
			width: 104%; /* Establece la anchura al 80% del contenedor */
			margin-left: -35%; /* Centra la línea horizontal */
			margin-top: 7%; /* Centra la línea horizontal */
		}
 		.flecha{
             cursor: pointer; 
             margin-left: 0%; 
             margin-top: -50%; 
/*           margin-right: 10%;  */
             width: 100%; 
             height: 210%; 
             filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */ 
         } 
         .flecha:hover { */
             filter: brightness(70%); */
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
             margin-left: 14%; 
             margin-top: -7%; 
/*              margin-right: 10%;  */
             width: 5%; 
             height: 58%;
         }
         .star2{ 
             cursor: pointer; 
             margin-left: 35%; 
             margin-top: -17%; 
/*              margin-right: 10%;  */
             width: 12%; 
             height: 58%;
         }  
    </style>
  </head>
  <body>
    <div class="container">
        <div class="fila">
        	<div class="circulo-ver">
            	<img src="img/arrow_back.svg" alt="" class="flecha" onclick="irItemLibro()">
        	</div>
            <p class="titulo">RESPONDER QUIZ DE PREGUNTAS</p>
        </div>
        
        <div class="subtitulo">
            <p>Elija una de las dos opciones para responder las preguntas:</p>      	
        </div>
        
        <div class="subtitulo2">
            <p>PREGUNTAS READER RANK:</p>
            <p class="cuadrado-verde"></p>
        </div>
        
        <div class="subtitulo3">
            <p>PREGUNTAS DEL ESCRITOR:</p>
            <p class="cuadrado-verde"></p>
        </div>
        
        <div class="texto">
            <p>Máximo 20</p>
            <img src="img/Gold_Star.png" alt="" class="star">
            <img src="img/Gold_Star.png" alt="" class="star" onclick="irItemLibro()">
        </div>
        
        <div class="texto2">
            <p>Máximo 100</p>
            <img src="img/Gold_Star.png" alt="" class="star2">
            <img src="img/Gold_Star.png" alt="" class="star2" onclick="irItemLibro()">
        </div>
        
        
                    
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
    	
	    function cerrarMenu() {
	        document.getElementById('menu').style.width = '0%';
	    }
	
	    function abrirMenu() {
	        document.getElementById('menu').style.width = '30%';
	    }

	    function irItemLibro() {
	        window.location.href = 'item_libro.jsp';
	    }
    </script>
  </body>
</html>
