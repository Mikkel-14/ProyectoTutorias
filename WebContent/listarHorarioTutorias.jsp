<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		          <a class="btn py-3 my-4 text-center aOn" href="#">Horarios de tutorías</a>
		          <a class="btn py-3 my-4 text-center" href="#">Información Docente</a>
		        </div>
		        <div class ="col-9">
		        	<div class="container-fluid d-flex flex-column justify-content-start" style="height: 100%;">
						<div class="container d-flex flex-column justify-content-start bg-white my-4 rounded-3 ">
							<div class="row mt-3 mb-0 mx-0">
								<div class="col-1 mx-0 px-0 text-end">
									<a class="btn btn-success mx-auto">Nuevo turno</a>
								</div>
								<div class="col-1  mx-1 px-0">
									<a class="btn btn-danger text-center">Eliminar turno</a>
								</div>
							</div>
							<div class="row my-4">
								<table class="shadow-sm rounded-3">
									<thead class="bg-primary">
										<tr>
											<th>Hora</th>
											<th>Lunes</th>
											<th>Martes</th>
											<th>Miércoles</th>
											<th>Jueves</th>
											<th>Viernes</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>7:00</td>
											<td class="disponible">7:15, 7:30</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>8:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>9:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>10:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>11:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>12:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>13:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>14:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>15:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>16:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>17:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
										<tr>
											<td>18:00</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										<tr>
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