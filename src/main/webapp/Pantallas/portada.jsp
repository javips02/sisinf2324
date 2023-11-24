<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>¡Bienvenido a ReaderRank!</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
        }
        .titulo{
        	text-align: center;
        	font-family: 'Imprint MT Shadow';
        	font-size: 90px;
        	font-style: italic;
        	color: white;
        }
        .bienvenida{
        	position: relative;
         	margin-left: 100px; 
     		margin-right: 100px;  
        	text-align: center;
        	text-align: justify;
        	font-family: 'Bodoni MT Poster Compressed';
        	font-size: 50px;
        	color: white;
        }
        .texto{
        	font-family: 'Poppins SemiBold';
        	font-size: 35px;
        	color: white;
        	text-align: left;
        	margin-top: -50px;
        	margin-left: 175px;
        }
        .container{
        	display: grid;
        	grid-template-columns: 1fr 1fr;
        	height: 100vh;
        	grid-template-columns: 40% 60%;
        	text-align: center;
        }
        .left{ 
        	background: #819165;
        }
        .right{ 
        	position: relative;
        	display: flex;
            
            align-items: center; /* Centra verticalmente */
        	background-image: url('img/libros.jpg');
        }
        /* Pseudoelemento para aplicar el filtro */
        .right::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Fondo negro semi transparente */
            filter: brightness(50%); /* Ajusta el valor según tus preferencias (porcentaje) */
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
            margin-top: 13%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-personalizado:hover {
            background-color: #333; /* Nuevo color de fondo al pasar el ratón */
        }
        .campo1 {
        	margin-top: -30px;
        	margin-bottom: 50px;
            background-color: #ACC08B;
            color: white; /* Color de texto blanco */
            border: none; /* Sin borde */
            border-radius: 50px; /* Esquinas redondeadas */
            padding: 10px 20px; /* Relleno interno para ajustar el ancho */
            font-size: 35px; /* Tamaño de fuente */
            font-family: 'Poppins SemiBold';
            width: 60%;
            
        }
        .textoRedes{ 
        	text-align: center;
        	font-family: 'Poppins SemiBold';
        	font-size: 35px;
        	color: white;
        	margin-top: -10px;
        }
        .cuadroRedes{
         	text-align: center;
         	width: 40%; 
         	height: 25%; 
         	background-color: #ACC08B; 
         	position: absolute; 
     		bottom: 0; 
         } 
        .circuloRedes {
        	display: flex;
    		align-items: center; /* Centra verticalmente */
    		justify-content: center; /* Centra horizontalmente */
		    width: 100px; /* Establece el ancho deseado */
		    height: 100px; /* Establece la misma altura que el ancho para que sea un círculo */
		    background-color: #819165; /* Color del círculo */
		    border-radius: 50%; /* Establece el radio para redondear las esquinas al 50% del ancho/altura */
		}
		.circuloRedes:nth-child(1) img{
			width: 70px;
    		height: 70px;
		}
		.circuloRedes:nth-child(2) img{
			width: 120px;
    		height: 70px;
		}
		.circuloRedes:nth-child(3) img{
			width: 70px;
    		height: 70px;
		}
		.circuloRedes:nth-child(4) img{
			width: 70px;
    		height: 70px;
		}
		.circuloRedes:nth-child(5) img{
			width: 80px;
    		height: 60px;
		}
		.filaDeCirculos {
 			margin-left: 35px;
		    display: flex;
		    justify-content: space-between;
		    width: 90%;
		}
    </style>
  </head>
  <body>
	
	
	<div class = "container">
		<div class = "left">
			<div class="titulo">
	    		<p>ReaderRank</p>
			</div>
    		<a href="crear_cuenta.jsp">
  				<button class="boton-personalizado">¡ADÉNTRATE EN NUESTRO MUNDO!</button>
			</a>
    		<div class = "cuadroRedes">
    			<div class="textoRedes">
	    			<p>¡Síguenos en nuestras redes!</p>
	    		</div>
	    		<div class="filaDeCirculos">
				    <div class="circuloRedes">
				    	<img src="img/u13.png" alt="">
				    </div>
				    <div class="circuloRedes">
				    	<img src="img/u14.png" alt="">
				    </div>
				    <div class="circuloRedes">
				    	<img src="img/u15.png" alt="">
				    </div>
				    <div class="circuloRedes">
				    	<img src="img/u16.png" alt="">
				    </div>
				    <div class="circuloRedes">
				    	<img src="img/u17.png" alt="">
				    </div>
				</div>
   			</div>
		</div>
				
		<div class = "right">
			<div class="bienvenida">
	    		<p class="bienvenida">Bienvenido/a a la web de ReaderRank, donde encontrarás una amplia selección de libros y autores.<br><br>Sumérgete en el mundo de la lectura con nuestros rankings de los mejores lectores del mundo.<br><br>¡Explora nuestro catálogo y encuentra tu sitio perfecto hoy mismo!</p>
			</div>
		</div>	
	</div>
  	

  </body>
</html>