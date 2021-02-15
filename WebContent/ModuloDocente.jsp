<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tutorias X</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
<style>
	html,body{
		margin:0px;
		height:100%;
		font-family: 'Poppins';
	}
	.barraTitulo{
		background-color:  #C4C4C4 ; 
		height: 50px;
	}
	
	.titulo {
		padding: 5px 0px 5px 5px;
	}
	.contenedorM{
		padding-top: 50px;
		height: 100%;
	}
	.modulos{
		padding: 0px;
		height: 100%;
	}
	.modulosC{
		background-color:  #C4C4C4 ; 
		height: 100%;
	}
	.ulM{
		padding: 20% 0% 20% 0%;
	}
	.liM{
		width: 100%;
		height: 60px;
		background-color: #75DFB3 ;
		display: table;

	}
	.modulo{
		color: #000000;	
		text-align: center;	
		padding: 0px;
	  	display: table-cell;
	  	vertical-align: middle;
	  	font-size: 18px;
		
	}
	.enunAciones{
		padding: 10px 0px 10px 0px; 
	}
	.accesos{
		margin-top: 15% ;
		display: table;
		height: 70px;
		padding: 0% 5% 0% 30%;
	}
	.accesos0{
		margin-top: 15% ;
		display: table;
		height: 70px;
		padding: 0% 30% 0% 5%;
	}
	.accesos1{
		margin-top: 5% ;
		display: table;
		height: 70px;
		padding: 0% 30% 1% 30%;
	}
	
	.acceso{
	  	margin: 0px;
	  	padding:  0px;
	  	background-color: #F6C1C1;
	  	font-size: 20px;
	  	color: #000000;	
	  	
	}

	
</style>
</head>
<body>
	<div class = "container-fluid barraTitulo fs-3 position-fixed" >
		<div class = "row">
			<div class = "col-6 col-md-1 titulo">Tutorias</div>  
			<div class="dropdown col-6 col-md-11 text-end titulo ">Docente
			  <a class="btn dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
			  </a>
			
			  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			    <li><a class="dropdown-item" href="#">Administrar Cuenta</a></li>
			    <li><a class="dropdown-item" href="#">Cerrar Sesión</a></li>
			  </ul>
			</div>
		</div>
	</div>
	<div class = "container-fluid contenedorM"  >
		<div class = "row modulos">
			<div class="col-12 col-md-3 col-lg-2 modulos">
				<ul class = "nav flex-colum modulosC ulM">
					<li class = "nav-item es liM">
						<a class = "nav-link active modulo" href = "#">Actualizar Información</a>
					</li>
					<li class = "nav-item liM">
						<a class = "nav-link active modulo" href = "#">Gestionar Horarios Tutorías</a>
					</li>
					<li class = "nav-item liM">
						<a class = "nav-link active modulo" href = "#">Cambiar Contraseña</a>
					</li>
				</ul>
			</div>
			<div class="col-12 col-md-9 col-lg-10">
				<div class = "col-12 enunAciones fs-3">Acciones rápidas</div>
				<div class = "row" >
					<div class = "nav flex-column col-6 accesos ">
						<a class = "nav-link active acceso card text-center align-middle d-table-cell" href = "#">Añadir Profesor</a>
					</div>
					<div class = "nav flex-column col-6 accesos0 ">
						<a class = "nav-link active acceso card text-center align-middle d-table-cell" href = "#">?????</a>
					</div>
					<div class = "nav flex-column col-12 accesos1">
						<a class = "nav-link active acceso card text-center align-middle d-table-cell" href = "#"> Añadir Departamento</a>
					</div>
				</div>
			</div>
		</div>
	</div>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>