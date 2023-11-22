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
            margin-right: 5%;
            position: relative;
            text-align: center;
            font-family: 'Imprint MT Shadow';
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
         	margin-left: 200px; 
     		margin-right: 200px;  
        	text-align: center;
        	text-align: justify;
            font-family: 'Poppins SemiBold';
            font-size: 30px;
            color: white;
            margin-top: -5%;
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
	    					<a href="#" onclick="irItem()">El Italiano</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#" onclick="irItem()">La Celestina</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#" onclick="irItem()">1984</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#" onclick="irItem()">La Encrucijada Mundial</a>
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
	    					<a href="#" onclick="irItem()">Emperador de Roma</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#" onclick="irItem()">Le dedico mi silencio</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#" onclick="irItem()">Cola de lagartija</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#" onclick="irItem()">Los idus de enero</a>
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
	    					<a href="#" onclick="irRankB()">Liga Bonsái</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#" onclick="irRankR()">Liga Roble</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#" onclick="irRankA()">Liga Abeto</a>
	    				</li>
	    				<li class="list_inside">
	    					<a href="#" onclick="irRankC()">Liga Cactus</a>
	    				</li>
	    			</ul>
	    		</li>
	    	</ul>
	    </nav>
	</div>
    <div class="container">
        <div class="fila">
            <img src="img/u24.svg" alt="" class="tresRayas" onclick="abrirMenu()">
            <p class="titulo">ReaderRank</p>
            <img src="img/u27.svg" alt="" id="miCampo2" class="lupa">
            <input type="text" class="campo1" id="miCampo" placeholder="BUSCAR">   
            <img src="img/bx-male.svg" alt="" class="persona" onclick="irPerfil()">
        </div>
            
        <div class="bienvenida">
            <p>Homero</p>
        </div>
        <div class="texto">
        	<p>Homero es el literato más famoso de la época arcaica, considerado el autor de dos de las obras más importantes de la Literatura Universal: la Iliada y la Odisea. Alrededor de su vida existe un halo legendario, especulándose incluso que no existió.</p>
        	<p>Obras del autor:</p>
        </div>
    </div>
    <script>
    
	    document.getElementById("miCampo").addEventListener("keypress", function(e) {
	        if (e.key === "Enter") {
	            var texto = document.getElementById("miCampo").value;
	            window.location.href = "busqueda.jsp?busqueda=" + texto;
	            // Esto redirigirá a busqueda.jsp pasando el texto como parámetro en la URL
	        }
	    });
	    
	    document.getElementById("miCampo2").addEventListener("click", function() {
	    	var texto = document.getElementById("miCampo").value;
	        window.location.href = "busqueda.jsp?busqueda=" + texto;
	        // Esto redirigirá a busqueda.jsp pasando el texto como parámetro en la URL
	    });

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
	    
	    function irItem() {
	        window.location.href = 'item_libro.jsp';
	    }
	    
	    function irRankB() {
	        window.location.href = 'rankingB.jsp';
	    }
	    
	    function irRankA() {
	        window.location.href = 'rankingA.jsp';
	    }
	    
	    function irRankR() {
	        window.location.href = 'rankingR.jsp';
	    }
	    
	    function irRankC() {
	        window.location.href = 'rankingC.jsp';
	    }
    </script>
  </body>
</html>
