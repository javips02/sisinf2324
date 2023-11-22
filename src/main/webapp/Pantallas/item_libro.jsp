<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>Item de libro La Odisea</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    <style>
        body {
            margin: 0;
        }
		.titulo {
		    margin-left: 38%;
		    margin-right: 10%;
		    position: relative;
		    text-align: center;
		    font-family: 'Imprint MT Shadow';
		    font-size: 90px;
		    font-style: italic;
		    color: white;
		}
		
		.bienvenida {
		    position: relative;
		    margin-left: 60px;
		    margin-right: 60px;
		    text-align: center;
		    text-align: justify;
		    font-family: 'Poppins SemiBold';
		    font-size: 40px;
		    color: #4B533D;
		}
		
		.cruz {
		    cursor: pointer;
		    margin-left: 0%;
		    margin-right: 5%;
		    width: 7%;
		    height: 30%;
		    filter: invert(1);
		}
		
		.cruz:hover {
		    filter: brightness(10%);
		}
		
		.unete {
		    position: relative;
		    margin-top: 60px;
		    margin-left: 60px;
		    margin-right: 60px;
		    text-align: center;
		    font-family: 'Poppins SemiBold';
		    font-size: 40px;
		    color: #4B533D;
		}
		
		.texto {
		    position: relative;
		    margin-left: 840px;
		    margin-right: 100px;
		    margin-top: 200px;
		    text-align: center;
		    text-align: justify;
		    font-family: 'Poppins SemiBold';
		    font-size: 30px;
		    color: white;
		}
		
		.texto2 {
		    position: relative;
		    margin-left: 840px;
		    margin-right: 100px;
		    margin-top: -400px;
		    text-align: center;
		    text-align: justify;
		    font-family: 'Poppins SemiBold';
		    font-size: 80px;
		    font-style: bold;
		    color: white;
		}
		
		.texto3 {
		    position: relative;
		    margin-left: 1200px;
		    margin-right: 0px;
		    margin-top: -145px;
		    text-align: center;
		    text-align: justify;
		    font-family: 'Poppins SemiBold';
		    font-size: 50px;
		    font-style: bold;
		    color: black;
		}
		
		.texto5 {
		    position: relative;
		    margin-left: 840px;
		    margin-right: 100px;
		    margin-top: 885px;
		    text-align: center;
		    text-align: justify;
		    font-family: 'Poppins SemiBold';
		    font-size: 30px;
		    color: white;
		}
		
		.texto6 {
		    position: relative;
		    margin-left: 1140px;
		    margin-right: 100px;
		    margin-top: -65px;
		    text-align: center;
		    text-align: justify;
		    font-family: 'Poppins SemiBold';
		    font-size: 30px;
		    color: white;
		}
		
		.texto7 {
		    position: relative;
		    margin-left: 1505px;
		    margin-right: 100px;
		    margin-top: -65px;
		    text-align: center;
		    text-align: justify;
		    font-family: 'Poppins SemiBold';
		    font-size: 30px;
		    color: white;
		}
		
		.texto_tick {
		    position: relative;
		    margin-left: 60px;
		    margin-right: 60px;
		    text-align: center;
		    text-align: justify;
		    font-family: 'Poppins SemiBold';
		    font-size: 30px;
		    color: #4B533D;
		}
		
		.container {
		    display: flex;
		    flex-direction: column;
		    height: 100vh;
		    background-repeat: no-repeat;
		    background-size: cover;
		    background: #819165;
		}
		
		.left {
		    background: #819165;
		    align-items: center;
		}
		
		.boton-personalizado {
		    background-color: #000;
		    color: #fff;
		    border: none;
		    border-radius: 50px;
		    font-size: 35px;
		    font-family: 'Poppins SemiBold';
		    cursor: pointer;
		    width: 15%;
		    text-align: center;
		    justify-content: center;
		    padding: 10px 20px;
		    margin-top: 300px;
		    margin-left: 700px;
		}
		
		.boton-personalizado:hover {
		    background-color: #333;
		}
		
		.boton-personalizado2 {
		    background-color: #000;
		    color: #fff;
		    border: none;
		    border-radius: 50px;
		    font-size: 35px;
		    font-family: 'Poppins SemiBold';
		    cursor: pointer;
		    width: 30%;
		    text-align: center;
		    justify-content: center;
		    padding: 10px 20px;
		    margin-top: -310px;
		    margin-left: 30px;
		}
		
		.boton-personalizado2:hover {
		    background-color: #333;
		}
		
		.boton-personalizado3 {
		    background-color: #555;
		    color: #fff;
		    border: none;
		    border-radius: 99px;
		    font-size: 35px;
		    font-family: 'Poppins SemiBold';
		    cursor: pointer;
		    width: 40%;
		    text-align: center;
		    justify-content: center;
		    padding: 30px 15px;
		    margin-top: 0px;
		    margin-left: 0px;
		}
		
		.boton-personalizado3:hover {
		    background-color: #666;
		}
		
		.boton-personalizado4 {
		    background-color: #555;
		    color: #fff;
		    border: none;
		    border-radius: 99px;
		    font-size: 35px;
		    font-family: 'Poppins SemiBold';
		    cursor: pointer;
		    width: 40%;
		    text-align: center;
		    justify-content: center;
		    padding: 30px 15px;
		    margin-top: 0px;
		    margin-left: 30px;
		}
		
		.boton-personalizado4:hover {
		    background-color: #666;
		}
		
		.botones2 {
		    margin-top: -300px;
		    margin-left: 750px;
		}
		
		.campo1 {
		    margin-top: -30px;
		    margin-bottom: 50px;
		    background-color: #ACC08B;
		    color: white;
		    border: none;
		    border-radius: 50px;
		    padding: 10px 20px;
		    font-size: 35px;
		    font-family: 'Poppins SemiBold';
		    width: 60%;
		}
		
		.boton-seleccion {
		    background-color: #ACC08B;
		    color: #fff;
		    border: none;
		    font-size: 35px;
		    font-family: 'Poppins SemiBold';
		    cursor: pointer;
		    text-align: center;
		    display: flex;
		    justify-content: center;
		    margin: -50px auto 80px auto;
		    width: 60%;
		}

		.titulo{
            margin-right: 100px;
            position: relative;
            text-align: center;
            font-family: 'Imprint MT Shadow';
            font-size: 90px;
            font-style: italic;
            color: white;
        }
        .container{
            display: flex; /* Habilita flexbox */
            flex-direction: column; /* Apila elementos verticalmente */
            height: 100vh;
            background-repeat: no-repeat;
            background-size: cover;
            background-image: url('u22.png');
        }
		.tresRayas{
            cursor: pointer;
            margin-left: 70px;
            margin-right: 595px;
            width: 7%;
            height: 13%;
            filter: brightness(100%); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
        }
        .tresRayas:hover {
            filter: brightness(70%);
        }
        .persona{
            cursor: pointer;
            margin-left: 2%;
            margin-right: 3%;
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
        }
        .campo1 {
            margin-left: 10px;
            margin-top: -10px;
            position: relative;
            background: transparent;
            color: white; /* Color de texto blanco */
            border: 2px solid white;
            border-radius: 50px; /* Esquinas redondeadas */
            padding: 5px 20px; /* Relleno interno para ajustar el ancho */
            font-size: 35px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            width: 60%; 
        }
        .campo1::placeholder {
            color: white; /* Color blanco para el texto del placeholder */
        }
        .campo1:focus {
		    outline: none; /* Asegura que el contorno de enfoque se elimine al hacer clic */
		}
    </style>
  </head>
  <body>
	
	
	<div class = "container">

		 <div class="fila">
            <img src="img/u24.svg" alt="" class="tresRayas" onclick="abrirMenu()">
            <p class="titulo">ReaderRank</p>
            <img src="img/u27.svg" alt="" class="lupa">
            <input type="text" class="campo1" id="miCampo" placeholder="BUSCAR">   
            <img src="img/bx-male.svg" alt="" class="persona" onclick="irPerfil()">
        </div>
			
<!-- 			<a href=""> -->
<!--   				<button class="boton-personalizado">Ver más info.</button> -->
<!-- 			</a> -->
<!-- 			<a href=""> -->
<!--   				<button class="boton-personalizado2">Responder quiz de preguntas</button> -->
<!-- 			</a> -->
			
<!-- 			<div class="botones2"> -->
<!-- 	    		<button class="boton-personalizado3">Novela</button> -->
<!-- 				<button class="boton-personalizado4">Clásicos grecolatinos</button> -->
<!-- 			</div> -->
			
<!-- 			<div class="fotos"> -->
<!-- 		    	<div class="cuadrado-verde"></div> -->
<!-- 				<img src="img/LaOdiseaHomero.png" alt="" class="img1"> -->
			
<!-- 				<div class="circulo-verde"></div> -->
<!-- 				<img src="img//Homero.png" alt="" class="img2"> -->
<!-- 			</div> -->
			
<!-- 			<div class="texto"> -->
<!-- 	    		<p>Muchos han oído hablar de la Odisea junto a la Ilíada, como uno de los dos poemas más importantes  de la antigua Grecia...</p> 	    	 -->
<!-- 			</div> -->
<!-- 			<div class="texto2"> -->
<!-- 	    		<p>La Odisea</p> 	    	 -->
<!-- 			</div> -->
<!-- 			<div class="texto3"> -->
<!-- 	    		<p>Homero</p> 	    	 -->
<!-- 			</div> -->
			
<!-- 			<div class="fotos"> -->
<!--  				<img src="img/u24.svg" alt="" class="tresRayas" onclick="abrirMenu()">			 -->
<!--  			</div> -->
 			
<!--  			<div class="fila"> -->
<!--  				<img src="img/u27.svg" alt="" class="lupa"> -->
<!-- 				<input type="text" class="campo1" placeholder="BUSCAR">	 -->
<!-- 				<img src="img/u25.svg" alt="" class="persona" onclick="irPerfil()"> -->
<!-- 			</div> -->
			
<!-- 			<div class="fotos2"> -->
<!-- 		    	<div class="cuadrado-verde2"></div> -->
<!-- 				<img src="img/Batra.jpg" alt="" class="img4"> -->
			
<!-- 				<div class="cuadrado-verde3"></div> -->
<!-- 				<img src="img/HH.png" alt="" class="img5"> -->
				
<!-- 				<div class="cuadrado-verde4"></div> -->
<!-- 				<img src="img/LaIliada.png" alt="" class="img6"> -->
<!-- 			</div> -->
			
<!-- 			<div class="texto5"> -->
<!-- 	    		<p>Batracomiomaquia</p> 	    	 -->
<!-- 			</div> -->
<!-- 			<div class="texto6"> -->
<!-- 				<p>Himnos Homéricos</p> 			 -->
<!-- 			</div> -->
<!-- 			<div class="texto7"> -->
<!-- 				<p>La Íliada</p> 			 -->
<!-- 			</div> -->
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
  </body>
</html>