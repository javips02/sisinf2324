<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- <form id"crearCuentaForm">
	<div class="field">
	    <span class="label">
	        <fmt:message key="Usuario.loginName"/>
	    </span>
	    <span class="entry">
	        <html:text property="loginName" size="16" maxlength="30" id="nombreRegistroInput"/>
	        <html:errors property="loginName"/>
	    </span>
	</div>
	
	<div class="field">
	    <span class="label">
	        <fmt:message key="Usuario.password"/>
	    </span>
	    <span class="entry">
	        <html:password property="password" size="16" maxlength="8" id="passRegistroInput"/>
	        <html:errors property="password"/>
	    </span>
	</div>
	
	<div class="field">
	    <span class="label">
	        <fmt:message key="RegisterUserContent.retypePassword"/>
	    </span>
	    <span class="entry">
	        <html:password property="retypePassword" size="16" maxlength="8" id="retypePassRegistroInput"/>
	        <html:errors property="retypePassword"/>
	    </span>
	</div> 
	<div class="button">        
    <html:submit onclick="crearCuentaJSP()">
        <fmt:message key="Buttons.register"/>
    </html:submit>
</div>
</form> -->
<form id="crearCuentaForm">
			    <input type="text" id="nombreRegistroInput" name="usuario" class="campo1" placeholder="Usuario">
			    <input type="text" id="correoERegistro" name="correo" class="campo1" placeholder="Correo electrónico">
			    <input type="password" id="passRegistroInput" name="contrasena" class="campo1" placeholder="Contraseña">
			    <input type="password" id="retypePassRegistroInput" name="contrasena" class="campo1" placeholder="Repetir Contraseña">
			    <button type="button" onclick="crearCuentaJSP()" class="boton-personalizado">INICIAR SESIÓN</button>
</form>
<script>
	function crearCuentaJSP() {
		console.log("Creando cuenta...");
	    var usuario = document.getElementById("nombreRegistroInput").value;
	    var pass = document.getElementById("passRegistroInput").value;
	    var reTypePass = document.getElementById("retypePassRegistroInput").value;
	    var reTypePass = document.getElementById("correoERegistro").value;
	    
	    console.log("Usuario:", usuario);
	    console.log("Contraseña:", pass);
	    console.log("Contraseña de nuevo:", reTypePass);
		console.log("Email registro:", correoERegistro)
	    // Realizar la solicitud AJAX
	    $.ajax({
	        type: "POST",
	        url: "/CrearCuentaServlet",
	        data: {
	            usuario: usuario,
	            contrasena: pass,
	            correoElectronico: correoERegistro,
	            reTypePass: reTypePass
	        },
	        success: function(response) {
	            // No necesitas realizar acciones adicionales en el cliente
	            // ya que las redirecciones se manejan en el servidor
	        },
	        error: function(error) {
	            console.error("Error en la solicitud AJAX", error);
	            alert("Error en el Registro. Por favor, intenta nuevamente.");
	        }
	    });
	}
</script>

</body>
</html>