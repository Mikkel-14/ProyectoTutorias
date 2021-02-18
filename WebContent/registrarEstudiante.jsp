<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="Cedula" scope="request" value="${Cedula}"/>
<c:set var="Nombre" scope="request" value="${Nombre}"/>
<c:set var="Apellido" scope="request" value="${Apellido}"/>
<c:set var="mensajeError" scope="request" value="${mensajeError}"/>
<c:set var="mensajeExito" scope="request" value="${mensajeExito}"/>    
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
	<style>
		html, body {
			height: 100%;
		}
		
		body {
			background-color: rgb(251, 249, 246);
			font-family: 'Poppins';
			color: #2f3640;
		}
		
		form {
			width: 30% !important;
			padding: 2% 5%;
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
		
		#altura {
			height: 100%;
		}
	</style>
</head>
<body>
	<div class="container-fluid d-flex flex-column justify-content-center"
		id="altura" >
		<form class="bg-white rounded-3 container shadow-sm" action="registrarEstudianteController" method="POST">
			<div class="row mb-3">
				<h3>Registrarse</h3>
				<h4>Universidad X</h4>
			</div>
			<div class="row px-4">
				<label for="cedula" class="form-label">Cédula</label>
			</div>
			<div class="row px-4 mb-4">
				<input type="text" class="form-control" id="cedula"
					placeholder="Número de cédula" name="cedula" required value="<c:out value="${Cedula}"/>">
			</div>
			<div class="row px-4">
				<label for="nombre" class="form-label">Nombre</label>
			</div>
			<div class="row px-4 mb-4">
				<input type="text" class="form-control" id="nombre"
					placeholder="Nombre" name="nombre" required value="<c:out value="${Nombre}"/>">
			</div>
			<div class="row px-4">
				<label for="apellido" class="form-label">Apellido</label>
			</div>
			<div class="row px-4 mb-4">
				<input type="text" class="form-control" id="apellido"
					placeholder="Apellido" name="apellido" required value="<c:out value="${Apellido}"/>">
			</div>
			<div class="row px-4">
				<label for="passwd" class="form-label">Contraseña</label>
			</div>
			<div class="row px-4 mb-2">
				<input type="password" class="form-control" id="passwd"
					placeholder="Contraseña" name="password" required>
			</div>
			
			<div class="row px-4">
				<label for="rpasswd" class="form-label">Confirmar Contraseña</label>
			</div>
			<div class="row px-4 mb-4">
				<input type="password" class="form-control" id="rpasswd"
					placeholder="Confirmar Contraseña" name="rpassword" required>
			</div>
			
			<div class="row mx-auto">
				<div class="col-5">
					<button type="submit" class="btn btn-primary">
						Registrarse</button>
				</div>
			</div>
			<div class="text-danger">${mensajeError}</div>
			<div class="text-success">${mensajeExito}</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>