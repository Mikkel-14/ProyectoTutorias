<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Docentes: Lista</title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
		crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap"
		rel="stylesheet">
	<script src="https://kit.fontawesome.com/7e57fa7d19.js"></script>
	<link rel="stylesheet" href="css/layout.css">
	<style>
	.col-9 div a:hover {
			color: white !important;
			font-weight: 800 !important;
		}
	</style>
</head>

<body>
	<div class="container-fluid" id="altura">
		<nav class="row purpura" style="height: 6%">
			<div
				class="col-9 d-flex flex-column justify-content-center align-items-start">
				Tutorias</div>
			<div
				class="col-3 d-flex flex-row justify-content-end align-items-center">
				<a href="ModuloAdministrador.jsp" class="btn">Administrador</a>
				<a href="index.jsp" class="btn"><i class="fas fa-sign-out-alt is"></i></a>
			</div>
		</nav>

		<div class="row" style="height: 94%;">
			<!-- una fila con dos columnas: la primera es la navegacion izq
	        y la segunda el espacio en blanco-->
			<div class="col-3 purpura2 d-flex flex-column justify-content-start">
				<a class="btn py-3 my-4 text-center" href="listaEstudiantes.jsp">Estudiante</a>
				<a class="btn py-3 my-4 text-center aOn" href="listaDocentes.jsp">Docente</a>
				<a class="btn py-3 my-4 text-center" href="listaDepartamentos.jsp">Departamento</a>
			</div>
			<div class="col-9">
				<div
					class="container-fluid d-flex flex-column justify-content-start"
					style="height: 100%;">
					<div
						class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3 ">
						<form class="row my-4">
							<div class="col-8 px-0">
								<input type="text" class="form-control" placeholder="Search..">
							</div>
							<div class="col-1 px-0 mx-0">
								<button type="button" class="btn btn-primary">Buscar</button>
							</div>
							<div class="col-2 px-0 mx-0"></div>
							<div class="col-1 ">
								<a href="añadirDocente.jsp" class="btn btn-success">Nuevo</a>
								<!-- <button type="button" class="btn btn-success">Nuevo</button> -->
							</div>
						</form>
						<div class="row my-4">
							<table class="shadow-sm rounded-3">
								<thead class="bg-primary">
									<tr>
										<th>CI</th>
										<th>Nombre</th>
										<th>Apellido</th>
										<th>Opciones</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Celda 1</td>
										<td>Celda 2</td>
										<td>Celda 3</td>
										<td><a href="#" class="btn edicion"><i
												class="far fa-trash-alt"></i></a></td>
									</tr>
									<tr>
										<td>Celda 1</td>
										<td>Celda 2</td>
										<td>Celda 3</td>
										<td><a href="#" class="btn edicion"><i
												class="far fa-trash-alt"></i></a></td>
									</tr>
									<tr>
										<td>Celda 1</td>
										<td>Celda 2</td>
										<td>Celda 3</td>
										<td><a href="#" class="btn edicion"><i
												class="far fa-trash-alt"></i></a></td>
									</tr>
									<tr>
										<td>Celda 1</td>
										<td>Celda 2</td>
										<td>Celda 3</td>
										<td><a href="#" class="btn edicion"><i
												class="far fa-trash-alt"></i></a></td>
									</tr>
									<tr>
										<td>Celda 1</td>
										<td>Celda 2</td>
										<td>Celda 3</td>
										<td><a href="#" class="btn edicion"><i
												class="far fa-trash-alt"></i></a></td>
									</tr>
									<tr>
										<td>Celda 1</td>
										<td>Celda 2</td>
										<td>Celda 3</td>
										<td><a href="#" class="btn edicion"><i
												class="far fa-trash-alt"></i></a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>
