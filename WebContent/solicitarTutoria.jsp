<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<c:if test="${(not empty sessionScope.usuario) && (sessionScope.tipo == 'estudiante')}">
	<head>
	<meta charset="ISO-8859-1">
	<title>Estudiante: Solicitar Tutoria</title>
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
			html, body {
				height: 100%;
			}
			body {
				background-color: #fbf9f6;
				font-family: 'Poppins';
				color: #2f3640;
			}
			.purpura {
			background-color: rgb(87, 16, 178);
			color: white;
			font-weight: 600;
			}
			.barraTitulo{
	        height: 50px;
	        margin: 0px;
	       }
	       .titulo {
	        padding: 5px 0px 5px 5px;
	    	}
			.purpura2 {
				background-color: rgba(79, 12, 164, 1);
			}
			.purpura2 {
				background-color: rgba(79, 12, 164, 1);
			}
			#altura {
				height: 100%;
			}
			
			a {
				color: white !important;
			}
			a:hover {
				background-color: white;
				color: black !important;
			}
			.img {
            text-align: center;
            bottom:55px !important;
            right:25% !important;
            opacity:0.6;
        	}
			
		</style>
	</head>	
	<body>
		<div class="container-fluid" id="altura">
			<nav class="row purpura" style="height: 6%">
				<div
					class="col-9 d-flex flex-column justify-content-center align-items-start">
					Tutorías</div>
				<div
					class="col-3 d-flex flex-row justify-content-end align-items-center">
					<div class="px-1">Estudiante  </div>
					<a class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
	  				</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					    <li><a class="dropdown-item text-dark" href="estudiantePasswd.jsp">Cambiar Contraseña</a></li>
					    <li><a class="dropdown-item text-dark" href="index.jsp">Cerrar Sesión</a></li>
					  </ul>
				</div>
			</nav>
	
			<div class="row" style="height: 94%;">
				<!-- una fila con dos columnas: la primera es la navegacion izq
		        y la segunda el espacio en blanco-->
				<div class="col-3 purpura2 d-flex flex-column justify-content-start">
					<a class="btn py-3 my-4 text-center aOn" href="solicitarTutoriaController">Solicitar Tutorías</a>
					<a class="btn py-3 my-4 text-center" href="#">Visualizar Información</a>
				</div>
				<form class="col-9">
					<div
						class="container-fluid d-flex flex-column justify-content-start"
						style="height: 100%;">
						<div
							class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3 ">
							<div class="row my-3 mx-5">
								<h4>Solicitar Tutoría</h4>
							</div>
							<div class="row w-50 mt-auto mx-auto">
								<label for="dpto" class="form-label">Departamento</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<select class="form-select" name="departamento" id="dpto" required >
									<c:forEach items="${listaDptos}" var="depa">
										<option value="${depa.id}">${depa.nombre}</option>
									</c:forEach>
								</select>
							</div>
							<div class="row w-50 mt-auto mx-auto">
								<label for="docente" class="form-label">Docente</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<select class="form-select" name="docente" id="docente" required >
									
								</select>
							</div>
							<div class="row w-50 mt-auto mx-auto">
								<label for="fecha" class="form-label">Fecha de Tutoría</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<input type="date" class="form-control" name="fechaTuto" id="fecha"/>
							</div>
							<div class="row w-50 mt-auto mx-auto">
								<label for="turnos" class="form-label">Turno de tutoría</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<select class="form-select" name="turno" id="turnos" required >
									
								</select>
							</div>
							<div class="row my-2 m-auto mb-2 pb-4">
								<button type="submit" class="btn btn-primary">Solicitar Tutoría</button>
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
		<script src="js/cargarDatosSolicitudTutoria.js"></script>
	</body>

</c:if>
<c:if test="${(empty sessionScope.usuario) || (sessionScope.tipo != 'estudiante')}">

	<head>
		<meta http-equiv="refresh" content="2; url=index.jsp"/>
	</head>
</c:if>
	
</html>