<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
	<meta charset="ISO-8859-1">
	<title>Estudiante: Módulo</title>
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
					    <li><a class="dropdown-item text-dark" href="#">Cambiar Contraseña</a></li>
					    <li><a class="dropdown-item text-dark" href="index.jsp">Cerrar Sesión</a></li>
					  </ul>
				</div>
			</nav>
	
			<div class="row" style="height: 94%;">
				<!-- una fila con dos columnas: la primera es la navegacion izq
		        y la segunda el espacio en blanco-->
				<div class="col-3 purpura2 d-flex flex-column justify-content-start">
					<a class="btn py-3 my-4 text-center" href="#">Solicitar Tutorías</a>
					<a class="btn py-3 my-4 text-center" href="#">Visualizar Tutorías</a>
					<a class="btn py-3 my-4 text-center" href="#">Visualizar Información</a>
				</div>
				<div class="col-9">
					
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