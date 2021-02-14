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
	body {
		background-color: rgb(251,249,246);
		font-family: 'Poppins';
		color: #2f3640;
	}
	form{
		height:70%;
		width: 30% !important;
		margin: 10% auto;
		padding: 2% 5%;
	}
	h2, h3, h4{
		text-align: center;
	}
	h4{
		color: gray;
	}
</style>
</head>
<body class="position-relative">
<div class="container-fluid">
<form class="bg-white rounded-3 container shadow-sm">
<h3>Inicio de Sesi�n</h3>
<h4>Universidad X</h4>
<div class="row px-4">
<label for="cedula" class="form-label">C�dula</label>
</div>
<div class="row px-4 mb-4">
<input type="text" class="form-control" id="cedula" placeholder="N�mero de c�dula">
</div>
<div class="row px-4">
<label for="passwd" class="form-label">Contrase�a</label>
</div>
<div class="row px-4 mb-4">
<input type="password" class="form-control" id="passwd" placeholder="Contrase�a">
</div>
<div class="row mx-auto">
<div class="col-5">
<button type="submit" class="btn btn-primary">Iniciar Sesi�n</button>
</div>
</div>
</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>