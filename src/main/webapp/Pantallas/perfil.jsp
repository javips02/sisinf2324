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
             margin-right: 24%; 
            margin-left: 0%;
            position: relative;
            text-align: center;
            font-family: 'Poppins SemiBold';
            font-size: 75px;
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
        .tresRayas{
            cursor: pointer;
            margin-left: 70px;
            margin-right: 510px;
            width: 2.1%;
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
        /* Estilo del menú lateral */
        .menu-lateral {
            width: 0; /* Inicialmente oculto */
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #819165; /* Color de fondo del menú */
            overflow-x: hidden;
            transition: 0.3s; /* Duración de la animación */
            z-index: 1;
        }
        .contenedor_flecha{
			display: flex;
    		justify-content: flex-end;
		}
		.flecha{
			cursor: pointer;
			margin-top: 50px;
			margin-right: 50px;
		}
		.flecha:hover {
		    filter: brightness(30%);
		}
		.menu-lateral {
            width: 0; /* Inicialmente oculto */
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #ACC08B; /* Color de fondo del menú */
            overflow-x: hidden;
            transition: 0.3s; /* Duración de la animación */
            z-index: 1;
        }
        .contenedor_flecha{
			display: flex;
    		justify-content: flex-end;
		}
		.flecha{
			cursor: pointer;
			margin-top: 50px;
			margin-right: 50px;
		}
		.flecha:hover {
		    filter: brightness(30%);
		}
		.menu-lateral ul {
		    list-style: none;
		    padding: 0;
		    font-family: 'Poppins SemiBold';
		}
		
		.menu-lateral ul li {
		    position: relative;
		    text-align: left;
		    margin-bottom: 50px;
		    margin-left: 30px;
		    overflow: hidden;
		}
		
		.menu-lateral ul li ul li {
		    position: relative;
		    text-align: left;
		    margin-bottom: 30px;
		    margin-left: 30px;
		    overflow: hidden;
		}
		
		.menu-lateral ul li a {
		    color: white;
		    text-decoration: none;
		    font-size: 30px;
		    display: block;
		    transition: 0.2s;
		}
		
		.menu-lateral ul li a:hover {
		    color: #37402F;
		}
		
		.menu-lateral ul li ul li a {
		    color: white;
		    text-decoration: none;
		    font-size: 20px;
		    display: block;
		    transition: 0.2s;
		}
		
		.list_button{
			display: flex;
			align-items: center;
			gap: 1em;
			width: 70%;
			margin: 0 auto;
		}
		
		.arrow .list_arrow{
			transform: rotate(90deg);
		}
	     
	    .list_arrow{
	    	margin-left: auto;
	    	transition: transform .3s;
	    	width: 15%;
	    }
	    
	    .list_show{
	    	width: 80%;
	    	margin-left: auto;
	    	border-left: 2px solid #37402F;
	    	list-style: none;
	    	transition: height .4s;
	    	height: 0px;
	    }
	    
	    .nav{
	    	margin-left: -50px;
	    	margin-top: 50px;
	    }
	    
	    .list_inside{
	    	position: relative;
		    text-align: left;
		    margin-bottom: 50px;
		    margin-left: 30px;
		    overflow: hidden;
	    }
	    .cruz{
            cursor: pointer;
            margin-left: 0%;
            margin-right: 0%;
            width: 7%;
            height: 30%;
            filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
        }
        .cruz:hover {
            filter: brightness(10%);
        }
        .circulos {
        	margin-top: -5%;
        	margin-left: 43%;
        }
        .circulo-blanco {
			width: 200px; /* Ajusta el ancho del círculo */
			height: 200px; /* Ajusta la altura del círculo para que coincida */
			background-color: #ABC0B5; /* Relleno de color gris */
			border: 15px solid white; /* Borde blanco de 5px */
			border-radius: 50%; /* Esto hace que el elemento sea un círculo */
			box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5); /* Sombra con desplazamiento, desenfoque y opacidad */
		}
		.circulo-ver {
			width: 160px; /* Ajusta el ancho del círculo */
			height: 160px; /* Ajusta la altura del círculo para que coincida */
			background-color: #386C51; /* Relleno de color verde */
			border: 15px solid #498A68; /* Borde blanco de 5px */
			border-radius: 50%; /* Esto hace que el elemento sea un círculo */
/* 			box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5); /* Sombra con desplazamiento, desenfoque y opacidad */
			margin-top: -21%;
			margin-left: 300px;
		}
		.texto2{
            font-family: 'Poppins SemiBold';
            font-size: 40px;
            color: white;
            margin-top: -1%;
            margin-left: 40%;
        }
        .texto3{
            font-family: 'Poppins SemiBold';
            font-size: 35px;
            color: white;
            font-style: bold;
            margin-top: -3%;
            margin-left: -3%;
        }
        .texto4{
            font-family: 'Poppins SemiBold';
            font-size: 30px;
            color: white;
            font-style: bold;
            margin-top: -2.2%;
            margin-left: 20%;
        }
        .linea-blanca { 
 			border: none; /* Elimina el borde por defecto del hr */
 			border-top: 6px solid #ACC08B; /* Establece un borde superior de 2 píxeles de ancho y color blanco */ 
 			width: 90%; /* Establece la anchura al 80% del contenedor */
 			margin-left: -28%; /* Centra la línea horizontal */
 			margin-top: 6%; /* Centra la línea horizontal */
 		} 
 		.linea-blanca2 { 
 			border: none; /* Elimina el borde por defecto del hr */ 
 			border-top: 6px solid #ACC08B; /* Establece un borde superior de 2 píxeles de ancho y color blanco */ 
 			width: 104%; /* Establece la anchura al 80% del contenedor */ 
 			margin-left: -35%; /* Centra la línea horizontal */ 
 			margin-top: -2%; /* Centra la línea horizontal */ 
 		} 
    </style>
  </head>
  <body>
   <div id="menu" class="menu-lateral">
   		<div class="contenedor_flecha">
	        <img src="img/u36.svg" alt="" class="flecha" onclick="cerrarMenu()">
	    </div>
	    <nav class="nav">
	    	<ul>
	    		<li>
	    			<div class="list_button list_button--click">
	    				<a href="#">IMPRESCINDIBLES</a>
	    				<img src="img/bx-chevron-right.svg" class="list_arrow">
	    			</div>
	    			<ul class="list_show">
    				<li class="list_inside">
	    					<a href="#">El Italiano</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">La Celestina</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">1984</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">La Encrucijada Mundial</a>
	    				</li>
	    			</ul>
	    		</li>
	    		<li>
	    			<div class="list_button list_button--click">
	    				<a href="#">GÉNEROS</a>
	    				<img src="img/bx-chevron-right.svg" class="list_arrow">
	    			</div>
	    			<ul class="list_show">
	    				<li class="list_inside">
	    					<a href="#">Aventura</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Ciencias</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Humanidades</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Juvenil</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Infantil</a>
	    				</li>
	    			</ul>
	    		</li>
	    		<li>
	    			<div class="list_button list_button--click">
	    				<a href="#">NOVEDADES</a>
	    				<img src="img/bx-chevron-right.svg" class="list_arrow">
	    			</div>
	    			<ul class="list_show">
	    				<li class="list_inside">
	    					<a href="#">Emperador de Roma</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Le dedico mi silencio</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Cola de lagartija</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Los idus de enero</a>
	    				</li>
	    			</ul>
	    		</li>
	    		<li>
	    			<div class="list_button list_button--click">
	    				<a href="#">RANKING</a>
	    				<img src="img/bx-chevron-right.svg" class="list_arrow">
	    			</div>
	    			<ul class="list_show">
	    				<li class="list_inside">
	    					<a href="#">Liga Bonsái</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Liga Roble</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Liga Abeto</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#">Liga Cactus</a>
	    				</li>
	    			</ul>
	    		</li>
	    	</ul>
	    </nav>
	</div>
    <div class="container">
        <div class="fila">
            <img src="img/u24.svg" alt="" class="tresRayas" onclick="abrirMenu()">
            <p class="titulo">PERFIL DE USUARIO</p>
            <img src="img/bx-x.svg" alt="" class="cruz" onclick="volverMenu()">
        </div>
            
        <div class="circulos">
            <p class="circulo-blanco"></p>
            <p class="circulo-ver"></p>
        </div>
        
         <div class="texto2">
    	    <p class="linea-blanca"></p> 
    	    <p class="texto3">Datos personales y de contacto</p>
	        <p class="linea-blanca2"></p> 
        </div>
        
        <div class="texto4">
            <p>Nombre y Apellidos:</p>
            <p>Pseudónimo:</p>
            <p>Dirección de correo electrónico:</p>
            <p>Fecha de nacimiento:</p>
            <p>Libros que lee al año:</p>
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

	    function volverMenu() {
	        window.location.href = 'menu_principal.jsp';
	    }
    </script>
  </body>
</html>
