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
            margin-left: 30%;
            position: relative;
            text-align: center;
            font-family: 'Poppins SemiBold';
            font-size: 90px;
            font-style: italic;
            color: white;
        }
        .bienvenida{
            position: relative;
            text-align: center;
            margin-top: 100px;
            font-family: 'Bodoni MT Poster Compressed';
            font-size: 90px;
            color: white;
            margin-top: -5%;
        }
        .texto{
        	position: relative;
         	margin-left: 2%; 
        	text-align: center;
        	text-align: justify;
            font-family: 'Poppins SemiBold';
            font-size: 30px;
            color: black;
            margin-top: 0%;
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
            margin-left: 5%;
            width: 3%;
            height: 13%;
            filter: brightness(100%); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
        }
        .tresRayas:hover {
            filter: brightness(70%);
        }
        .persona{
            cursor: pointer;
            margin-left: 28%;
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
            margin-top: -3%;
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
            margin-right: 5%;
            width: 7%;
            height: 30%;
            filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
        }
        .cruz:hover {
            filter: brightness(10%);
        }
        .ligas{
        	margin-top: 0%;
        	margin-left: 9%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
        }
        .marcador{
        	margin-top: 5%;
        	margin-left: 5%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
        }
        .cuadrado {
        	  margin-left: 0%;
		      width: 150%;
		      height: 100%;
		      background-color: #d5f1cc;
		      border-radius: 25px; /* Ajusta este valor para cambiar el grado de redondeo */
		      box-shadow: 10px 10px 8px rgba(0, 0, 0, 0.1);
	      	  border: 8px solid #5D6C57; /* Circunferencia negra */
		}
	    .arrowl{
            cursor: pointer;
            margin-left: 0%;
            margin-right: 0%;
            width: 70%;
            height: 30%;
            filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
            transition: background-color 0.6s; /* Agrega una transición para suavizar el cambio */   
        }
        .arrowl:hover {
            filter: brightness(90%);
            background-color: #d5f1cc;
        }
        .arrowr{
            cursor: pointer;
            margin-left: 0%;
            margin-right: 5%;
            width: 70%;
            height: 30%;
            filter: invert(1); /* Configura el brillo al 0% para que la imagen se vea completamente blanca */
            transition: background-color 0.6s; /* Agrega una transición para suavizar el cambio */     
        }
        .arrowr:hover {
            filter: brightness(90%);
            background-color: #d5f1cc;
        }
        .cactus{
        	margin-left: -12%;
        	margin-top: 0%;
        	width: 10%;
            height: 90%;
        }
        .abeto{
        	margin-left: -16%;
        	margin-top: 0%;
        	width: 13%;
            height: 95%;
        }
        .roble{
        	margin-left: -22%;
        	margin-top: %;
        	width: 16%;
            height: 90%;
        }
        .bonsai{
        	margin-left: -37%;
        	margin-top: 0%;
        	width: 25%;
            height: 120%;
        }
	    .liga1{
        	margin-top: -3%;
        	margin-left: 15%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
	    }
	     .c1 {
	      margin-top: 2%;
          margin-left: 0%;
	      width: 14%;
	      height: 140%;
	      background-color: #333; /* Fondo gris */
	      border-radius: 50%; /* Hace que el elemento sea un círculo */
	      border: 10px solid #000; /* Circunferencia negra */
	      box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.2); /* Sombra */
	      transition: background-color 0.6s; /* Agrega una transición para suavizar el cambio */
	    }
	    .c1:hover {
            filter: brightness(90%);
            background-color: #AC7651;
        }
	    .liga2{
        	margin-top: -8%;
        	margin-left: 35%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
	    }
	     .c2 {
	      margin-top: 2%;
          margin-left: 0%;
	      width: 18%;
	      height: 140%;
	      background-color: #333; /* Fondo gris */
	      border-radius: 50%; /* Hace que el elemento sea un círculo */
	      border: 10px solid #000; /* Circunferencia negra */
	      box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.2); /* Sombra */
	      transition: background-color 0.6s; /* Agrega una transición para suavizar el cambio */
	    }
	    .c2:hover {
            filter: brightness(90%);
            background-color: #C4BEBE;
        }
	    .liga3{
        	margin-top: -7%;
        	margin-left: 55%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
	    }
	     .c3 {
	      margin-top: 0%;
          margin-left: 0%;
	      width: 26%;
	      height: 165%;
	      background-color: #333; /* Fondo gris */
	      border-radius: 50%; /* Hace que el elemento sea un círculo */
	      border: 10px solid #000; /* Circunferencia negra */
	      box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.2); /* Sombra */
	      transition: background-color 0.6s; /* Agrega una transición para suavizar el cambio */
	    }
	    .c3:hover {
            filter: brightness(90%);
            background-color: #ffd700;
        }
	    .liga4{
        	margin-top: -7%;
        	margin-left: 75%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
	    }
	     .c4 {
	      margin-top: 0%;
          margin-left: 0%;
	      width: 48%;
	      height: 190%;
	      background-color: #333; /* Fondo gris */
	      border-radius: 50%; /* Hace que el elemento sea un círculo */
	      border: 10px solid #fff; /* Circunferencia negra */
	      box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.2); /* Sombra */
	    }
	    .c5 {
	      margin-top: -1.5%;
          margin-left: 2%;
	      width: 4%;
	      height: 70%;
	      background-color: #fff; /* Fondo gris */
	      border-radius: 50%; /* Hace que el elemento sea un círculo */
	      border: 5px solid #333; /* Circunferencia negra */
	      box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.2); /* Sombra */
	    }
	    .persona1 {
        	margin-top: -20%;
        	margin-left: 29%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
	    }
	    .persona2 {
        	margin-top: 0%;
        	margin-left: 29%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
	    }
	    .persona3 {
        	margin-top: 0%;
        	margin-left: 29%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
	    }
	    .persona4 {
        	margin-top: 0%;
        	margin-left: 29%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
	    }
	    .persona5 {
        	margin-top: 0%;
        	margin-left: 29%;
            display: flex; /* Utiliza flexbox para alinear las imágenes en fila */
            align-items: center;
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
            <p class="titulo">RANKING</p>
            <img src="img/bx-male.svg" alt="" class="persona" onclick="irPerfil()">
            <img src="img/bx-x.svg" alt="" class="cruz" onclick="volverMenu()">
        </div>
        
        <div class="liga1">
        	<p class="c1" onclick="ACactus()"></p>
			<img src="img/cactus.png" alt="" class="cactus">
        </div>
        
        <div class="liga2">
        	<p class="c2" onclick="AAbeto()"></p>
			<img src="img/abeto.png" alt="" class="abeto">
        </div>
        
        <div class="liga3">
        	<p class="c3" onclick="ARoble()"></p>
			<img src="img/roble.png" alt="" class="roble">
        </div>
        
         <div class="liga4"> 
         	<p class="c4"></p> 
 			<img src="img/bonsai.png" alt="" class="bonsai"> 
         </div>
        
        
         <div class="marcador"> 
             <img src="img/arrow_left.svg" alt="" class="arrowl" onclick="left()"> 
              <p class="cuadrado"></p>
             <img src="img/arrow_right.svg" alt="" class="arrowr" onclick="right()"> 
         </div>
         
         <div class="persona1"> 
			<p class="texto">1</p>
			<p class="c5"></p>
			<p class="texto">Jesús Lizama Pitinga</p>
         </div>
         
         <div class="persona2"> 
			<p class="texto">2</p>
			<p class="c5"></p>
			<p class="texto">Jesús Lizama Pitinga</p>
         </div>
         
         <div class="persona3"> 
			<p class="texto">3</p>
			<p class="c5"></p>
			<p class="texto">Jesús Lizama Pitinga</p>
         </div>
         
         <div class="persona4"> 
			<p class="texto">4</p>
			<p class="c5"></p>
			<p class="texto">Jesús Lizama Pitinga</p>
         </div>
         
         <div class="persona5"> 
			<p class="texto">5</p>
			<p class="c5"></p>
			<p class="texto">Jesús Lizama Pitinga</p>
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
	
	    function irPerfil() {
	        window.location.href = 'perfil.jsp';
	    }
	    
	    function volverMenu() {
	        window.location.href = 'menu_principal.jsp';
	    }
	    
	//	    ARBOLES
	    function ACactus() {
	        window.location.href = 'rankingC.jsp';
	    }
	    
	    function AAbeto() {
	        window.location.href = 'rankingA.jsp';
	    }
	    
	    function ARoble() {
	        window.location.href = 'rankingR.jsp';
	    }
	    
	//	    FLECHAS
		function left() {
	        window.location.href = 'rankingR.jsp';
	    }
	    
		function right() {
	        window.location.href = 'rankingC.jsp';
	    }
    
	    
    </script>
  </body>
</html>
