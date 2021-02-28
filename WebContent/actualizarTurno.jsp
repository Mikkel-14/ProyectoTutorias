<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="turnos" scope="request" value="${turnos}"/>
<!DOCTYPE html>
<html>
<c:if test="${(not empty sessionScope.usuario) && (sessionScope.tipo == 'docente')}">
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
	            <a class="btn py-3 my-4 text-center aOn" href="listarHorarioTutoriasController">Horarios de tutorías</a>
	            <a class="btn py-3 my-4 text-center" href="visualizarDatosDocenteController">Información Docente</a>
			</div>
			<div class="col-9">
				<div
					class="container-fluid d-flex flex-column justify-content-start"
					style="height: 100%;">
					<div class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3 ">
					<form method="POST" action="actualizarTurnoController">
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
                                	<c:forEach begin="7" end="18" varStatus="hora">
		                               	<tr>
	                                       <td>${hora.index}:00</td>
	                                       
	                                       <c:forEach begin="1" end="5" varStatus="dia">
	                                       <c:set var="letraDia"/>
	                                       <c:if test="${dia.index==1}"><c:set var="letraDia" value="l"/></c:if>
	                                       <c:if test="${dia.index==2}"><c:set var="letraDia" value="m"/></c:if>
	                                       <c:if test="${dia.index==3}"><c:set var="letraDia" value="x"/></c:if>
	                                       <c:if test="${dia.index==4}"><c:set var="letraDia" value="j"/></c:if>
	                                       <c:if test="${dia.index==5}"><c:set var="letraDia" value="v"/></c:if>
	                                       <td>
		                                       <c:forEach begin="00" end="45" step="15" varStatus="min">
		                                          <c:set var="minuto"/>
		                                          <c:choose>
		                                          	  <c:when test="${min.index == 0}">
		                                          	  	  <c:set var="minuto" value="00"/>
		                                          	  </c:when>
		                                          	  <c:otherwise>
		                                          	  	  <c:set var="minuto" value="${min.index}"/>
		                                          	  </c:otherwise>
		                                          </c:choose>
		                                          <c:set var="nombre" value="${letraDia}-${hora.index}-${minuto}"/>
		                                          <c:set var="isChecked" value=""/>
		                                          <c:forEach var="item" items="${turnos}">
		                                              <c:if test="${item eq nombre}">
		                                                  <c:set var="isChecked" value="checked"/>
		                                              </c:if>
		                                          </c:forEach>
		                                          <input type="checkbox" class="btn-check" id="${nombre}" name="turno" value="${nombre}" autocomplete="off" ${isChecked}>
	  										      <label class="btn btn-outline-primary" for="${nombre}">${minuto}</label>
		                                       </c:forEach>
	                                       </td>
	                                       </c:forEach>
	                                   	</tr>
                                	</c:forEach>
                                </tbody>
                            </table>
                        </div>
                        	<!-- Botón Actualizar --> 
							<div class="row m-auto my-3" style="width: 20%">
								<button type="submit" class="btn btn-primary" name="actualizar">Actualizar</button>
							</div>
                        </form>
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
</c:if>
<c:if test="${(empty sessionScope.usuario) || (sessionScope.tipo != 'docente')}">
	<head>
		<meta http-equiv="refresh" content="2; url=index.jsp"/>
	</head>
</c:if>
</html>