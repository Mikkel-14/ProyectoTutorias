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
		font-size: 20px;
	}
	
	.titulo{
		padding: 5px 0px 5px 0px;
	}
	.imgSalida{
		text-align: right;		
	}
	.contenedorM{
		height: 92%;
	}
	.modulos{
		padding: 0px;
		height: 100%;
	}
	.modulosC{
		background-color:  #C4C4C4 ; 
		height: 100%;
	}
	li{
		width: 100%;
		height: 60px;
		background-color: #75DFB3 ;
		display: table;
	}
	ul{
		padding: 20% 0% 20% 0%;
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
		padding: 0% 30% 0% 30%;
	}
	
	.acceso{
		display: table-cell;
	  	vertical-align: middle;
	  	text-align: center;
	  	margin: 0px;
	  	padding:  0px;
	  	background-color: #F6C1C1;
	  	font-size: 20px;
	  	color: #000000;
	  	
	}

		

</style>
</head>
<body>
	<div class = "container-fluid barraTitulo" >
		<div class = "row titulo">
			<div class = "col-6 col-md-1">Tutorias</div>
        	<div class = "col-6 col-md-11 imgSalida">Administrador  
        	<a href="index.jsp"><!-- enlace para salir -->
        			<img src="https://iconarchive.com/download/i91934/icons8/windows-8/User-Interface-Logout.ico" class="img-fluid" width="35" height="35"> </div>
			</a>
		</div>
	</div>
	<div class = "container-fluid contenedorM"  >
		<div class = "row modulos">
			<div class="col-12 col-md-3 col-lg-2 modulos">
				<ul class = "nav flex-colum modulosC">
					<li class = "nav-item es">
						<a class = "nav-link active modulo" href = "#">Estudiantes</a>
					</li>
					<li class = "nav-item">
						<a class = "nav-link active modulo" href = "#">Docentes</a>
					</li>
					<li class = "nav-item">
						<a class = "nav-link active modulo" href = "#">Departamentos</a>
					</li>
				</ul>
			</div>
			<div class="col-12 col-md-9 col-lg-10">
				<div class = "col-12 enunAciones"> <h5>Acciones rápidas</h5></div>
				<div class = "row" >
					<div class = "nav flex-column col-6 accesos ">
						<a class = "nav-link active acceso card" href = "#">Añadir Profesor</a>
					</div>
					<div class = "nav flex-column col-6 accesos0 ">
						<a class = "nav-link active acceso card" href = "#">?????</a>
					</div>
					<div class = "nav flex-column col-12 accesos1">
						<a class = "nav-link active acceso card" href = "#"> Añadir Departamento</a>
					</div>
				</div>
			</div>
		</div>
	</div>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>