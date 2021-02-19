<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Actualizar Departamento</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
				rel="stylesheet"
				integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
				crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap"
				rel="stylesheet">
		<c:choose>
			<c:when test="${(empty sessionScope.usuario) && (sessionScope.tipo != 'admin')}">
				<meta http-equiv="refresh" content="0; url=index.jsp"/> 
				</head>
			</c:when>
			<c:otherwise>
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
		        background-color: rgb(87,16,178);
		        color: white;
		        font-weight: 600;
		    }
		    .purpura2{ background-color: rgba(79,12,164,1); }
		    a { color: white !important; }
		    a:hover {
		    	background-color: white;
				color:black !important;
			}
			.aOn {
				background-color: white;
				color: black !important;
			}
		    nav{ text-align: end; }
			#altura { height: 100%; }
			.gray { background-color: #C4C4C4; }
			a {
				text-decoration: none;
				color: #2f3640;
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
		</style>
		
		<script src="https://kit.fontawesome.com/7e57fa7d19.js" ></script>
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
						href="cerrarSesionController" class="btn"><i class="fas fa-sign-out-alt is"></i></a>
				</div>
			</nav>
			<div class="row" style="height: 94%;">
				<!-- una fila con dos columnas: la primera es la navegacion izq
	        	y la segunda el espacio en blanco-->
				<div class="col-3 purpura2 d-flex flex-column justify-content-start">
					<a class="btn py-3 my-4 text-center"
						href="listarEstudianteController">Estudiante</a> <a
						class="btn py-3 my-4 text-center" href="listarDocenteController">Docente</a>
					<a class="btn py-3 my-4 text-center aOn"
						href="listarDepartamentoController">Departamento</a>
				</div>
				<form class="col-9 d-flex flex-column justify-content-center"
					method="POST" action="actualizarDepartamentoController">
					<div
						class="container-fluid d-flex flex-column justify-content-start "
						style="height: 100%;">
						<div
							class="container d-flex flex-column justify-content-start bg-white my-4 pb-4 rounded-3 py-3">
							<div class=" row my-3 mx-5">
								<h4>Edición de los Datos del Departamento</h4>
							</div>
							<!-- Id -->
							<div class="row w-50 mt-1 mx-auto">
								<label for="ID" class="form-label">ID</label>
							</div>
							<div class="row w-50 mb-4 mx-auto">
								<input type="text" class="form-control" id="ID"
									placeholder="${idEditar}" readonly name="id"
									value="${idEditar}">
							</div>

							<!-- Nombre -->
							<div class="row w-50 mt-1 mx-auto">
								<label for="nombre" class="form-label ">Nombre</label>
							</div>
							<div class="row w-50 mb-2 mx-auto">
								<input type="text" class="form-control" id="nombre"
									placeholder="Nombre del departamento" name="nombre" value="${nombreEditar}" required>
							</div>

							<!-- Botón Actualizar -->
							<div class="row m-auto my-3">
								<button type="submit" class="btn btn-primary" name="actualizar">Actualizar</button>
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
</c:otherwise>
</c:choose>
</html>