<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="dptos" scope="request" value="${dptos}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Departamentos: Lista</title>
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
	<style>
		html, body {
			height: 100%;
		}
		body {
			background-color: rgb(251, 249, 246);
			font-family: 'Poppins';
			color: #2f3640;
		}
		.purpura {
			background-color: rgb(87, 16, 178);
			color: white;
			font-weight: 600;
		}
		.purpura2 {
			background-color: rgba(79, 12, 164, 1);
		}
		nav {
			text-align: end;
		}
		a {
			color: white !important;
		}
		a:hover {
			background-color: white;
			color: black !important;
		}
		.aOn {
			background-color: white;
			color: black !important;
		}
		table {
			border-collapse: collapse;
			overflow: hidden;
			/*box-shadow: 0 0 20px rgba(0,0,0,0.1);*/
			text-align: center;
			background-color: white;
		}
		table tr:hover {
			background-color: #a5c9fe;
			/*cursor: pointer;*/
		}
		table th {
			color: white;
		}
		table thead tr:hover {
			background-color: #0d6efd;
			cursor: inherit;
		}
		.btn-primary {
			width: 100%;
			background-color: rgb(87, 16, 178);
			border-color: rgb(87, 16, 178);
		}
		.btn-primary:hover {
			background-color: rgba(79, 12, 164, 1);
			border-color: rgba(79, 12, 164, 1);
		}
		#altura {
			height: 100%;
		}
		.edicion {
			background-color: inherit !important;
			color: black !important;
		}
		nav div a {
			background-color: inherit !important;
			color: white !important;
			font-weight: 600 !important;
		}
		nav div a:hover {
			color: white !important;
			font-weight: 800 !important;
		}
		.col-9 div a:hover {
			color: white !important;
			font-weight: 800 !important;
		}
	</style>
</head>

<body>
	<c:if test="${(not empty sessionScope.usuario) && (sessionScope.tipo == 'admin')}">
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
					<a class="btn py-3 my-4 text-center" href="listarEstudianteController">Estudiante</a>
					<a class="btn py-3 my-4 text-center" href="listarDocenteController">Docente</a>
					<a class="btn py-3 my-4 text-center aOn" href="listarDepartamentoController">Departamento</a>
				</div>
				<div class="col-9">
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
						<a class="btn py-3 my-4 text-center" href="listarDocenteController">Docente</a>
						<a class="btn py-3 my-4 text-center aOn" href="listarDepartamentoController">Departamento</a>
					</div>
					<div class="col-9">
						<div
							class="container-fluid d-flex flex-column justify-content-start"
							style="height: 100%;">
							<div
								class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3 ">
								<form class="row my-4" method="GET" action="listarDepartamentoController">
									<div class="col-8 px-0">
										<input type="text" class="form-control" placeholder="Buscar por nombre" name="search">
									</div>
									<div class="col-1 px-0 mx-0">
										<button type="submit" class="btn btn-primary">Buscar</button>
									</div>
									<div class="col-2 px-0 mx-0"></div>
									<div class="col-1 ">
										<a href="a�adirDepartamento.jsp" class="btn btn-success">Nuevo</a>
									</div>
								</form>
								<div class="row my-4">
									<table class="shadow-sm rounded-3">
										<thead class="bg-primary">
											<tr>
												<th>ID</th>
												<th>Nombre</th>
												<th>Opciones</th>
											</tr>
										</thead>
										<c:choose>
											<c:when test="${dptos==null}">
												</table>
												</div>
												<div class="row mx-auto mb-4">No hay elementos para mostrar.</div>
											</c:when>
											<c:otherwise>
												<tbody>
													<c:forEach var="depa" items="${dptos}">
														<tr>
															<td>${depa.id}</td>
															<td>${depa.nombre}</td>
															<td><a href="#" class="btn edicion"> <i
																	class="far fa-edit"></i></a><a href="#" class="btn edicion"><i
																	class="far fa-trash-alt"></i></a></td>
														</tr>
													</c:forEach>
												</tbody>
												</table>
												</div>
											</c:otherwise>
										</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
				crossorigin="anonymous"></script>
		</c:if>
</body>
</html>
