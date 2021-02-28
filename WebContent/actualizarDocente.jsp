<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="docente" scope="request" value="${docente}" />
<c:set var="listaDptos" scope="request" value="${listaDptos}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Docente: Listar Turnos</title>
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
	
	<style>
		.disponible{
			background-color: #fff9e8;
		}
		.disponible:hover{
			background-color: #fde195;
		}
		.col-9 div a:hover {
				color: white !important;
				font-weight: 800 !important;
			}
	</style>
</head>
<body>
	<div class="container-fluid" id="altura">
	      <nav class="row purpura" style="height: 6%" >
	        <div class="col-9 d-flex flex-column justify-content-center align-items-start">
	            Tutorías
	        </div>
	        <div class="col-3 d-flex flex-row justify-content-end align-items-center">
	              <a href="ModuloDocente.jsp" class="btn">Docente</a>
	              <div class="btn-group">
					  <button type="button" class="btn text-white dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"></button>
					  <ul class="dropdown-menu  purpura2">
					    <li><a class="dropdown-item " href="docentePasswd.jsp">Cambiar Contraseña</a></li>
					    <li><a class="dropdown-item " href="index.jsp">Salir</a></li>
					  </ul>
					</div>
	        </div>
	      </nav>

	      <div class="row" style="height: 94%;">
	         <!-- una fila con dos columnas: la primera es la navegacion izq
	        y la segunda el espacio en blanco-->
		        <div class="col-3 purpura2 d-flex flex-column justify-content-start">
		          <a class="btn py-3 my-4 text-center" href="#">Tutorías</a>
		          <a class="btn py-3 my-4 text-center" href="listarHorarioTutoriasController">Horarios de tutorías</a>
		          <a class="btn py-3 my-4 text-center aOn" href="visualizarDatosDocenteController">Información Docente</a>
		        </div>
		        <form class="col-9 d-flex flex-column justify-content-center"
					method="POST" action="actualizarDoncenteController">
		      
		        	<div class="container-fluid d-flex flex-column justify-content-start" style="height: 100%;">
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
									placeholder="Cédula del docente" readonly
									value="<c:out value="${docente.cedula}"/>" >
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
							<div class="row w-50 mx-auto mb-4">
								<input type="text" class="form-control" id="apellido"
									placeholder="Apellido del docente"
									value="<c:out value="${docente.apellido}"/>"
									name="apellidoDocente">
							</div>
							
							<!-- Lista de Deparamentos -->
							
							<div class="row w-50 mt-auto mx-auto">
								<label for="departamento" class="form-label">Departamento</label>
							</div>
							<div class="row w-50 mx-auto mb-2">
								<select class="form-select" name="departamento" id="departamento" required >
									
									<c:forEach var="dpto" items="${listaDptos}">
										<option value="${dpto.id}">${dpto.nombre}</option>
									</c:forEach>
								</select>
							</div>
							
				
							<!-- Botón Actualizar -->
							<div class="row my-3 m-auto">
								<button type="submit" class="btn btn-primary">Actualizar</button>
							</div>
							
						</div>
					</div>
				</form>
		              			        	
		</div>		        
	  </div>
	<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
			crossorigin="anonymous"></script>
</body>
</html>