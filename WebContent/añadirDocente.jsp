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
			<div class="col-9 d-flex flex-column justify-content-center align-items-start">
            	Tutorias
            </div>
			<div class="col-3 d-flex flex-row justify-content-end align-items-center">
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
       		<form class="col-9 d-flex flex-column justify-content-center">
				<div class="mt-auto mx-5">
					<h4>Datos del Docente</h4>
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
			</form>
        </div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
			crossorigin="anonymous">
	</script>
</body>
</html>