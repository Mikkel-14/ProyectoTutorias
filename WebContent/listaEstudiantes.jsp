<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="nomina" scope="request" value="${nomina}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Estudiantes: Lista</title>
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
				<a class="btn py-3 my-4 text-center aOn" href="listarEstudianteController">Estudiante</a>
				<a class="btn py-3 my-4 text-center" href="listarDocenteController">Docente</a>
				<a class="btn py-3 my-4 text-center" href="listarDepartamentoController">Departamento</a>
			</div>
			<div class="col-9">
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
					<a class="btn py-3 my-4 text-center aOn" href="listaEstudiantes.jsp">Estudiante</a>
					<a class="btn py-3 my-4 text-center" href="listarDocenteController">Docente</a>
					<a class="btn py-3 my-4 text-center" href="listarDepartamentoController">Departamento</a>
				</div>
				<div class="col-9">
					<div
						class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3 ">
						<form class="row my-4">
							<div class="col-8 px-0">
								<input type="text" class="form-control" placeholder="Buscar por CI" name="search">
							</div>
							<div class="col-1 px-0 mx-0">
								<button type="submit" class="btn btn-primary">Buscar</button>
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
								<c:choose>
									<c:when test="${nomina == null}">
										</table>
										</div>
										<div class="row mx-auto mb-4">No hay elementos para mostrar.</div>
									</c:when>
									<c:otherwise>
										<tbody>
										<c:forEach var="estudiante" items="${nomina}">
											<tr>
												<td>${estudiante.cedula}</td>
												<td>${estudiante.nombre}</td>
												<td>${estudiante.apellido}</td>
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
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
			crossorigin="anonymous"></script>
	</c:if>
</body>
</html>
