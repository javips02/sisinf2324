<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Iniciar sesion</title>

</head>
		<link rel="stylesheet" href="estilos/barra.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="estilos/fondo.css">
<body>
<%
	String errorU = "";
	if (request.getAttribute("errorUsuario") != null) {
		errorU = (String) request.getAttribute("errorUsuario");
	}
	
%>

<div class="container rounded mt-5 mb-5" style="border: 2px solid; background-color: #D4DAD7;">

<form action="iniciarSesion" method="post">
<br><br><h1>INICIAR SESIÓN</h1><br>
  <div class="imgcontainer">
    <a href="inicioSinDatos.jsp"><img src="Imagenes/logo.png" class="avatar"></a>
  </div>

  <div class="container">
    <br><label for="Correo"><b>Correo de usuario</b></label>
    <input type="text" placeholder="Introduzca el correo" name="Correo" required>

    <br><label for="Contrasenya"><b>Contraseña</b></label>
    <input type="password" placeholder="Introduzca la contraseña" name="Contrasenya" required><br>
    <span><FONT COLOR="red"><%= errorU%></FONT></span><br>
    <button type="submit" style="font-size: medium;">Iniciar sesión</button>
    
  </div>
</form>

<form action="registrarse.jsp" method="post">	
	<div class="container">
    	<button type="submit" class="cancelbtn">Registrarse</button><br><br>
	</div>
</form>  
</div>
</body>
</html>
