<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		id="altura">
		<form class="bg-white rounded-3 container shadow-sm">
			<div class="row mb-3">
				<h3>Inicio de Sesión</h3>
				<h4>Universidad X</h4>
			</div>
			<div class="row px-4">
				<label for="cedula" class="form-label">Cédula</label>
			</div>
			<div class="row px-4 mb-4">
				<input type="text" class="form-control" id="cedula"
					placeholder="Número de cédula">
			</div>
			<div class="row px-4">
				<label for="passwd" class="form-label">Contraseña</label>
			</div>
			<div class="row px-4 mb-2">
				<input type="password" class="form-control" id="passwd"
					placeholder="Contraseña">
			</div>
			<div class="row px-4 mb-4">
				<a href="#">¿No tienes cuenta? Regístrate</a>
			</div>
			<div class="row mx-auto">
				<div class="col-5">
					<button type="submit" class="btn btn-primary">Iniciar
						Sesión</button>
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