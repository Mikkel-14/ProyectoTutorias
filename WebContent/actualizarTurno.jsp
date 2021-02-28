<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Docente: Actualizar horario tutorias</title>
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
	<div class="container-fluid" id="altura">
		<nav class="row purpura" style="height: 6%">
			<div
				class="col-9 d-flex flex-column justify-content-center align-items-start">
				Tutorias</div>
			<div
				class="col-3 d-flex flex-row justify-content-end align-items-center">
				<a href="#" class="btn">Administrador</a>
				<a href="#" class="btn"><i class="fas fa-sign-out-alt is"></i></a>
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
					class="container-fluid d-flex flex-column justify-content-start"
					style="height: 100%;">
					<div class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3 ">
						<div class="row my-4">
							<table class="shadow-sm rounded-3">
								<thead class="bg-primary">
									<tr>
                                        <th>Horas</th>
										<th>Lunes</th>
										<th>Martes</th>
										<th>Miercoles</th>
										<th>Jueves</th>
                                        <th>Viernes</th>
									</tr>
								</thead>
                                <tbody>
                                <form method="POST" action="actualizarTurnoController">
                                	<c:forEach begin="7" end="18" varStatus="hora">
		                               	<tr>
	                                       <td>${hora.index}:00</td>
	                                       
	                                       <c:forEach begin="1" end="5" varStatus="dia">
	                                       <c:set var="letraDia"/>
	                                       <c:if test="${dia.index==1}"><c:set var="letraDia" value="L"/></c:if>
	                                       <c:if test="${dia.index==2}"><c:set var="letraDia" value="M"/></c:if>
	                                       <c:if test="${dia.index==3}"><c:set var="letraDia" value="X"/></c:if>
	                                       <c:if test="${dia.index==4}"><c:set var="letraDia" value="J"/></c:if>
	                                       <c:if test="${dia.index==5}"><c:set var="letraDia" value="V"/></c:if>
	                                       <!-- Lunes -->
	                                       <td>
		                                       <c:forEach begin="00" end="45" step="15" varStatus="min">
		                                          <input type="checkbox" class="btn-check" id="${letraDia}-${hora.index}-${min.index}" name="turno" value="${letraDia}-${hora.index}-${min.index}" autocomplete="off">
	  										      <label class="btn btn-outline-primary" for="${letraDia}-${hora.index}-${min.index}">${min.index}</label>
		                                       </c:forEach>
	                                       </td>
	                                       </c:forEach>
	                                       <!-- 
	                                       <!-- Martes 
	                                       <td>
		                                       <c:forEach begin="00" end="45" step="15" varStatus="min">
		                                          <input type="checkbox" class="btn-check" id="M-${hora.index}-${min.index}" name="turno" value="M-${hora.index}-${min.index}" autocomplete="off">
	  										      <label class="btn btn-outline-primary" for="M-${hora.index}-${min.index}">${min.index}</label>
		                                       </c:forEach>
	                                       </td>
	                                       <!-- Miercoles 
	                                       <td>
		                                       <c:forEach begin="00" end="45" step="15" varStatus="min">
		                                          <input type="checkbox" class="btn-check" id="X-${hora.index}-${min.index}" name="turno" value="X-${hora.index}-${min.index}" autocomplete="off">
	  										      <label class="btn btn-outline-primary" for="X-${hora.index}-${min.index}">${min.index}</label>
		                                       </c:forEach>
	                                       </td>
	                                       <!-- Jueves 
	                                       <td>
		                                       <c:forEach begin="00" end="45" step="15" varStatus="min">
		                                          <input type="checkbox" class="btn-check" id="J-${hora.index}-${min.index}" name="turno" value="J-${hora.index}-${min.index}" autocomplete="off">
	  										      <label class="btn btn-outline-primary" for="J-${hora.index}-${min.index}">${min.index}</label>
		                                       </c:forEach>
	                                       </td>
	                                       <!-- Viernes 
	                                       <td>
		                                       <c:forEach begin="00" end="45" step="15" varStatus="min">
		                                          <input type="checkbox" class="btn-check" id="V-${hora.index}-${min.index}" name="turno" value="V-${hora.index}-${min.index}" autocomplete="off">
	  										      <label class="btn btn-outline-primary" for="V-${hora.index}-${min.index}">${min.index}</label>
		                                       </c:forEach>
	                                       </td>
	                                        -->
	                                   	</tr>
                                	</c:forEach>
                                	<input type="submit" name="submit" value="Actualizar xd">
                               	</form>
                                </tbody>
                            </table>
                        </div>
					</div>
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