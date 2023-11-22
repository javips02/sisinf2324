<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page
	import="java.util.ArrayList"
	import="java.util.LinkedList"
	import="java.util.List"
%>
<!DOCTYPE html>
<html>
<head>
<%
	String Correo = (String) request.getSession().getAttribute("Correo");
%>

<meta charset="UTF-8">

<title>Mi cuenta</title>
		<link rel="stylesheet" href="estilos/barra.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="estilos/fondo.css">
</head>

<body>
<%
	List<String> user = new ArrayList<String>();
	if (request.getSession().getAttribute("user") != null)
		user = (List<String>)request.getSession().getAttribute("user");
	int i = 0;
%>
<form method="post" action="pantallaInicioDatos">
	<input value="Cerrar sesion" type="submit" name="opcion"/>
	<input value="Mi cuenta" type="submit" name="opcion"/>
	<input style="color:#000000;" value=<%=Correo %> type="button"/>
</form>

<header class="header" style="background-color: #3FB068;">
    <h1 class="logo"><a href="inicio"> <img src="Imagenes/logo.png" height="50" width="120"></a></h1>
	<ul class="main-nav">
		<li><a href="testss" style="margin-top:10px;">Realizar tests</a></li>
      	<li><a href="estadisticass" style="margin-top:10px;">Resultados</a></li>
      	<li><a href="proponerPregg" style="margin-top:10px;">Proponer pregunta</a></li>
	  	<li><a target="_blank" href="https://twitter.com/UNZauto"> <img src="Imagenes/twitterLogo2.png" height="40" width="50"></a></li>
	</ul>
</header> 


<div class="container rounded mt-5 mb-5" style="border: 2px solid; background-color: #D4DAD7;">
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="text-center">Mi cuenta</h2>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Nombre</label><input type="text" class="form-control" value="<%= user.get(i+2)%>" disabled></div>
                    <div class="col-md-6"><label class="labels">Apellidos</label><input type="text" class="form-control" value="<%= user.get(i+3) %>" disabled></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Correo</label><input type="text" class="form-control" value="<%= user.get(i) %>" disabled ></div>
                    <div class="col-md-12"><br><label class="labels">Edad</label><input type="text" class="form-control" value="<%= user.get(i+1) %>" disabled></div>
                    <div class="col-md-12"><br><label class="labels">Rol</label><input type="text" class="form-control" value="Usuario" disabled></div>
                </div>
                
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">País</label><input type="text" class="form-control" value="España" disabled></div>
                    <div class="col-md-6"><label class="labels">Ciudad</label><input type="text" class="form-control" value="Zaragoza" disabled></div>
                </div>
                <form method="post" action="inicio">
					<div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit" style="background-color: #3FB068; width: 50%">Inicio</button></div>
           		</form>
            </div>
        </div>
    </div>
</div>

</body>

