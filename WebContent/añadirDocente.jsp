<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Añadir Docente</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
			crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap"
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
		.fuente { font-size: 100%; }
		.is { font-size: 188%; }
		.btn { border: none; }
		#altura { height: 93%; }
		.gray { background-color: #C4C4C4; }
		a {
			text-decoration: none;
			color: #2f3640;
		}
		.seccionOn { background-color: rgb(32, 212, 137); }
		.seccionOff { background-color: #B8C0BD; }
	</style>
	
	<script src="https://kit.fontawesome.com/7e57fa7d19.js" ></script>
</head>

<body>
	<div class="container-fluid d-flex flex-row gray fuente" style="height: 7%;">
		<div class="col-9 py-3">
			Tutorías
		</div>
		<div class="col-2 py-3 text-center">
			Administrador
		</div>
		<div class="col-1 py-2 text-center">
			<a href="#" class="btn"><i class="fas fa-sign-out-alt is"></i></a>
		</div>
	</div>
	<div class="d-flex flex-row" id="altura">
		<div class="col-3 d-flex flex-column  text-center gray">
			<div class="my-4 seccionOff">
				<a href="#" class="btn w-100 py-3">Estudiantes</a><br>
			</div>
			<div class="my-4 seccionOn">
				<a href="#" class="btn w-100 py-3">Docentes</a><br>
			</div>
			<div class="my-4 seccionOff">
				<a href="#" class="btn w-100 py-3">Departamentos</a><br>
			</div>
		</div>
		<div class="col-9 d-flex flex-column justify-content-center">
			<div class="mt-auto mx-5">
				<h4>Edición de los Datos del Docente</h4>
			</div>
			<!-- Cédula -->
			<div class="w-50 mt-auto mx-auto">
				<label for="cedula" class="form-label">Cédula</label>
			</div>
			<div class="w-50 mx-auto">
				<input type="text" class="form-control" id="cedula" placeholder="Número de cédula">
			</div>
			
			<!-- Nombre -->
			<div class="w-50 mt-auto mx-auto">
				<label for="nombre" class="form-label">Nombre</label>
			</div>
			<div class="w-50 mx-auto">
				<input type="text" class="form-control" id="nombre" placeholder="Nombre del docente">
			</div>
			
			<!-- Apellido -->
			<div class="w-50 mt-auto mx-auto">
				<label for="apellido" class="form-label">Apellido</label>
			</div>
			<div class="w-50 mx-auto">
				<input type="text" class="form-control" id="apellido" placeholder="Apellido del docente">
			</div>
			
			<!-- Botón Actualizar -->
			<div class="m-auto">
				<button type="submit" class="btn btn-primary">Añadir</button>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
			crossorigin="anonymous">
	</script>
</body>
</html>