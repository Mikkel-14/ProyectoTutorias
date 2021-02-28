<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Docente: Añadir turnos</title>
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
					    <li><a class="dropdown-item " href="#">Cambiar Contraseña</a></li>
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
		          <a class="btn py-3 my-4 text-center aOn" href="#">Horarios de tutorías</a>
		          <a class="btn py-3 my-4 text-center" href="#">Información Docente</a>
		        </div>
		        <form class ="col-9">
		        	<div class="container-fluid d-flex flex-column justify-content-start" style="height: 100%;">
						<div class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3 ">
							<div class=" row my-3 mx-5">
								<h4>Eliminar turno</h4>
							</div>
							<div class="row w-50 mt-auto mx-auto">
								<label for="diaTurno" class="form-label">Día del turno:</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<select type="select" required class="form-select" id="diaTurno"
									placeholder="Seleccione un día"
									 name="diaTurno">
									 <option value="l">Lunes</option>
									 <!-- Esto hay que llenar desde la base -->
								</select>
							</div>
							<div class="row w-50 mt-auto mx-auto">
								<label for="horarioTurno" class="form-label">Hora inicial del turno:</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<div class="col-6">
									<select type="select" required class="form-select" id="diaTurno" name="hTurno">
									 	<c:forEach items="${listaHoras}" var="hora">
									 		<option>${hora}</option>
									 	</c:forEach>
									</select>
								</div>
								<div class="col-6">
									<select type="select" required class="form-select" name="cuartoHTurno">
										<option value="q1">0</option>
										<option value="q2">15</option>
									 	<!-- Esto hay que llenar desde la base -->
									</select>
								</div>
							</div>
							<div class="row mx-auto mb-4">
								<button type="submit" class="btn btn-primary">Eliminar turno</button>
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