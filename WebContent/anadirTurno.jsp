<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<c:choose>
		<c:when test="${(empty sessionScope.usuario) || (sessionScope.tipo != 'docente')}">
			<meta http-equiv="refresh" content="0; url=index.jsp"/>
		</c:when>
		<c:otherwise>
		
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
		          <a class="btn py-3 my-4 text-center aOn" href="listarHorarioTutorias.jsp">Horarios de tutorías</a>
		          <a class="btn py-3 my-4 text-center" href="#">Información Docente</a>
		        </div>
		        <form class ="col-9" method="POST" action="anadirTurnoController">
		        	<div class="container-fluid d-flex flex-column justify-content-start" style="height: 100%;">
						<div class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3 ">
							<div class=" row my-3 mx-5">
								<h4>Añadir turno</h4>
							</div>
							<div class="row w-50 mt-auto mx-auto">
								<label for="diaTurno" class="form-label">Día del turno:</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<select type="select" required class="form-select" id="diaTurno"
									placeholder="Seleccione un día"
									 name="diaTurno">
									 <option value="l">Lunes</option>
									 <option value="m">Martes</option>
									 <option value="x">Miércoles</option>
									 <option value="j">Jueves</option>
									 <option value="v">Viernes</option>
								</select>
							</div>
							<div class="row w-50 mt-auto mx-auto">
								<label for="horarioTurno" class="form-label">Hora inicial del turno:</label>
							</div>
							<div class="row w-50 mx-auto mb-4">
								<div class="col-6">
									<select type="select" required class="form-select" id="diaTurno" name="hTurno">
									 <option value="7">7</option>
									 <option value="8">8</option>
									 <option value="9">9</option>
									 <option value="10">10</option>
									 <option value="11">11</option>
									 <option value="12">12</option>
									 <option value="13">13</option>
									 <option value="14">14</option>
									 <option value="15">15</option>
									 <option value="16">16</option>
									 <option value="17">17</option>
									 <option value="18">18</option>
									</select>
								</div>
								<div class="col-6">
									<select type="select" required class="form-select" name="cuartoHTurno">
										<option value="q1">0</option>
										<option value="q2">15</option>
									 	<option value="q3">30</option>
									 	<option value="q4">45</option>
									</select>
								</div>
							</div>
							
								<c:choose>
									<c:when test="${result==true}">
										<div class="row w-50 mx-auto text-success mb-4">Se ha añadido el nuevo turno</div>
									</c:when>
									<c:when test="${result==false}">
										<div class="row w-50 mx-auto text-danger mb-4">El turno ya existe</div>
									</c:when>
								</c:choose>
							
							<div class="row mx-auto mb-4">
								<button type="submit" class="btn btn-primary">Añadir turno</button>
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
</c:otherwise>
	</c:choose>
</html>