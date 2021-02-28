<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var = "bandera" value = "false"/>

<!DOCTYPE html>
<html>
<c:remove var="usuario"/>
<c:remove var="tipo"/>

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
		<form class="bg-white rounded-3 container shadow-sm" action="loginController" method="POST">
			<div class="row mb-3">
				<h3>Inicio de Sesi�n</h3>
				<h4>Universidad X</h4>
			</div>
			<div class="row px-4">
				<label for="cedula" class="form-label">C�dula</label>
			</div>
			<div class="row px-4 mb-4">
				<input type="text" class="form-control" id="cedula"
					placeholder="N�mero de c�dula" name="usuario" value="<c:out value="${cookie['usuario'].getValue()}"/>" required >
			</div>
			<div class="row px-4">
				<label for="passwd" class="form-label">Contrase�a</label>
			</div>
			<div class="row px-4 mb-2">
				<input type="password" class="form-control" id="passwd"
					placeholder="Contrase�a" name="password" value="<c:out value="${cookie['password'].getValue()}"/>" required>
			</div>
			<div class="row px-1 mb-1">
				<a href="registrarEstudiante.jsp">�No tienes cuenta? Reg�strate</a>
			</div>
			<div class="row px-1 mb-1 ml-20">
				<div class="col-10">
					<input type="checkbox" name="recordarme" <c:if test="${cookie['recordar'].getValue() == 'on'}">checked="checked"</c:if>/>Recordarme<br>
					
				</div>
			</div>
			<div class="row mx-auto">
				<div class="col-5">
					<button type="submit" class="btn btn-primary">Iniciar
						Sesi�n</button>
				</div>
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>