<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Tutorias X</title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
		crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap"
		rel="stylesheet">
	<c:choose>
			<c:when test="${(empty sessionScope.usuario) && (sessionScope.tipo != 'docente')}">
				<meta http-equiv="refresh" content="0; url=index.jsp"/> 
				</head>
			</c:when>
	<c:otherwise>
	
	<style>
		html, body {
			height: 100%;
		}
		
		body {
			background-color: rgb(251, 249, 246);
			font-family: 'Poppins';
			color: #2f3640;
		}
		
		.barraTitulo{
        background-color:  #C4C4C4 ; 
        height: 50px;
        margin: 0px;
       }
		
		#altura{
			padding-top: 50px;
		}
		
		h2, h3, h4 {
			text-align: center;
		}
		
		h4 {
			color: gray;
		}
		
		a {
			text-decoration: none;
		}
		
		.fondo{
			background-color: rgb(240,236,236);
			margin: 1.5px 12px 3.5px 12px;
			height: 40px;
			padding-top: 6px;
			overflow:auto;
			
		}
		.bordes{
			padding: 40px;
		
		}
		.titulo {
        padding: 5px 0px 5px 5px;
    	}
    	

		
	
	</style>
</head>
<body>
<div class = "container-fluid barraTitulo fs-3 row position-fixed" >
        
	<div class = "col-6 col-md-1 titulo">Tutorias</div>
	<div class="dropdown col-6 col-md-11 text-end titulo ">Docente
	  <a class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
	  </a>
	
	  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
	    <li><a class="dropdown-item" href="#">Administrar Cuenta</a></li>
	    <li><a class="dropdown-item" href="#">Cerrar Sesión</a></li>
	  </ul>
	</div>
   
</div>

	
<div class="container-fluid d-flex flex-column justify-content-center" id="altura">

	<div class="row my-3 mx-4" >
		<h7 class >Inicio > Cambiar contraseña</h7>
	</div>
	
		<form class="bordes bg-white rounded-3 container-fluid shadow-sm my-3 col-lg-7 col-md-7 col-sm-10 col-xs-10"  action="loginController" method="POST">
			
			<div class="row ">
				<h3>Cambio de contraseña</h3>
			</div>
		
			<div class="row px-4">
				<label for="passwdActual" class="form-label">Contraseña actual</label>
			</div>
			<div class="row px-4 mb-2">
				<input type="password" class="form-control" id="passwd"
					placeholder="Contraseña Actual" required="required">
			</div>
			
			<div class="row px-4">
				<label for="passwdNueva" class="form-label">Nueva Contraseña</label>
			</div>
			<div class="row px-4 mb-2">
				<input type="password" class="form-control" id="passwd1"
					placeholder="Nueva Contraseña" required="required">
			</div>
			<div class="row px-4">
				<label for="passwdRepetida" class="form-label">Confirmar Contraseña</label>
			</div>
			<div class="row px-4 mb-2">
				<input type="password" class="form-control" id="passwd2"
					placeholder="Confirmar contraseña" required="required">
			</div>
			<div class = "text-danger"></div>
			<div class="ce text-center mt-5">
				<button type="submit" class="btn btn-primary" value="${usuario} name = "cedula" >Actualizar</button>
			</div>
		</form>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</c:otherwise>
</c:choose>

</html>