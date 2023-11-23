<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>ReaderRank</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>   
    <style>
        body {
            margin: 0;
        }
        .titulo{
            position: relative;
            font-family: 'Imprint MT Shadow';
            font-size: 90px;
            font-style: italic;
            color: white;
        }

        .texto{
            font-family: 'Poppins SemiBold';
            font-size: 35px;
            color: white;
            margin-top: -1%;
        }
        .container{
            display: flex; /* Habilita flexbox */
            flex-direction: column; /* Apila elementos verticalmente */
            text-align: center;
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
            margin-top: 5%;
            width: 60%;
        }
        /* Cambio de color al pasar el ratón por encima */
        .boton-personalizado:hover {
            background-color: #333; /* Nuevo color de fondo al pasar el ratón */
        }
        .tick{
        	width: 15%;
        	margin-left: 41%;
        }
    </style>
  </head>
  <body>
  	
	<div class = "container">
        <p class="titulo">ReaderRank</p>
        <p class="texto">LA CUENTA A LA QUE SE INTENTA ACCEDER NO EXISTE</p>
        <img src="img/error.png" alt="" class="tick">
            	
        <a href="menu_principal.jsp">
  			<button class="boton-personalizado">MENÚ PRINCIPAL</button>
		</a>			
	</div>
  </body>
</html>