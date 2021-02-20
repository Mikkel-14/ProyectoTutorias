<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!DOCTYPE html>
	<html>
	<c:if test="${(not empty sessionScope.usuario) && (sessionScope.tipo == 'docente')}">
	
	<head>
	    <meta charset="ISO-8859-1">
	    <title>Docente: Módulo</title>
	    <link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
			crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link
			href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap"
			rel="stylesheet">
	  <style>
	      html, body{
	        height: 100%;
	      }
	      body {
	  			background-color: #fbf9f6;
	  			font-family: 'Poppins';
	  			color: #2f3640;
	  		}
	      .purpura{
	        background-color: rgb(87,16,178);
	        color: white;
	        font-weight: 600;
	      }

	      .purpura2{
	          background-color: rgba(79,12,164,1);
	      }
	      nav{
	        text-align: end;
	      }

	      a{
	          color: white !important;
	      }
	      a:hover{
	          background-color: white;
	          color:black !important;
	      }

	    .btn-primary{
	        width: 100%;
	        background-color: rgb(87,16,178);
	        border-color: rgb(87,16,178);
	    }

	      .btn-primary:hover{
	          background-color: rgba(79,12,164,1);
	          border-color: rgba(79,12,164,1);
	      }
	    #altura{
	      height:100%;
	    }
	      .edicion{
	          background-color: inherit !important;
	          color:black !important;
	      }
	      
	    nav div a {
			background-color:inherit !important;
			color: white !important;
			font-weight: 600 !important;
		}
		nav div a:hover {
			color: white !important;
			font-weight: 800 !important;
		}
	    #acciones{
			width: 35%
		}
		
		li:hover {
			background-color: white;
		}
		ul li  a:hover{
			color: black !important;
		}
		
        .col-4 {
            text-align: center;
            position:absolute;
            bottom:55px !important;
            right:25% !important;
            opacity:0.6;
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
		          <a class="btn py-3 my-4 text-center" href="#">Tutorias</a>
		          <a class="btn py-3 my-4 text-center" href="listarHorarioTutorias.jsp">Horarios Tutorias</a>
		          <a class="btn py-3 my-4 text-center" href="#">Informacion Docente</a>
		        </div>
		        <div class="col-4 ">
                    <img src="./img/2.png">
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