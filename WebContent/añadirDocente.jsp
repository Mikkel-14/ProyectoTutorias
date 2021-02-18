<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="docente" scope="request" value="${docente}" />
<c:set var="estadoSolicitud" scope="request" value="${estadoSolicitud}" />

<!DOCTYPE html>
<html>
<c:if test="${(not empty sessionScope.usuario) && (sessionScope.tipo == 'admin')}">
	<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Añadir Docente</title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
		crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap"
		rel="stylesheet">
	<link rel="stylesheet" href="css/layout.css">
	
	<script src="https://kit.fontawesome.com/7e57fa7d19.js"></script>
	
	</head>
	
	<body>
		<div class="container-fluid" id="altura">
			<nav class="row purpura" style="height: 6%">
				<div
					class="col-9 d-flex flex-column justify-content-center align-items-start">
					Tutorias</div>
				<div
					class="col-3 d-flex flex-row justify-content-end align-items-center">
					<a href="ModuloAdministrador.jsp" class="btn">Administrador</a> <a
						href="index.jsp" class="btn"><i class="fas fa-sign-out-alt is"></i></a>
				</div>
			</nav>
			<div class="row" style="height: 94%;">
				<!-- una fila con dos columnas: la primera es la navegacion izq
	        	y la segunda el espacio en blanco-->
				<div class="col-3 purpura2 d-flex flex-column justify-content-start">
					<a class="btn py-3 my-4 text-center" href="listarEstudianteController">Estudiante</a>
					<a class="btn py-3 my-4 text-center aOn" href="listarDocenteController">Docente</a>
					<a class="btn py-3 my-4 text-center" href="listarDepartamentoController">Departamento</a>
				</div>
				<form class="col-9 d-flex flex-column justify-content-center"
					method="POST" action="añadirDocenteController">
					<div
						class="container-fluid d-flex flex-column justify-content-start py-3"
						style="height: 100%;">
						<div
							class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3">
							<div class="row my-3 mx-5">
								<h4>Datos del Docente</h4>
							</div>
							<!-- Cédula -->
							<div class="row w-50 mt-auto mx-auto">
								<label for="cedula" class="form-label">Cédula</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<input type="text" required class="form-control" id="cedula"
									placeholder="Cédula del docente"
									value="<c:out value="${docente.cedula}"/>" name="numCedula">
							</div>
	
							<!-- Nombre -->
							<div class="row w-50 mt-auto mx-auto">
								<label for="nombre" class="form-label">Nombre</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<input type="text" class="form-control" id="nombre"
									placeholder="Nombre del docente"
									value="<c:out value="${docente.nombre}"/>" name="nombreDocente">
							</div>
	
							<!-- Apellido -->
							<div class="row w-50 mt-auto mx-auto">
								<label for="apellido" class="form-label">Apellido</label>
							</div>
							<div class="row w-50 mx-auto mb-2">
								<input type="text" class="form-control" id="apellido"
									placeholder="Apellido del docente"
									value="<c:out value="${docente.apellido}"/>"
									name="apellidoDocente">
							</div>
							<c:choose>
								<c:when test="${estadoSolicitud}">
									<div class="row w-50 mx-auto text-success">Se ha registrado al docente exitosamente</div>
								</c:when>
								<c:when test="${estadoSolicitud==false}">
									<div class="row w-50 mx-auto text-danger">No se ha podido registrar al docente</div>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
							<!-- Botón Actualizar -->
							<div class="row my-3 m-auto">
								<button type="submit" class="btn btn-primary">Añadir</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
			crossorigin="anonymous">
		</script>
	</body>
</c:if>
<c:if test="${(empty sessionScope.usuario) || (sessionScope.tipo != 'admin')}">

	<head>
		<meta http-equiv="refresh" content="2; url=index.jsp"/>
	</head>
</c:if>

</html>