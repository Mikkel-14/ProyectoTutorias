<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Estudiantes: Lista</title>
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
  			background-color: rgb(251, 249, 246);
  			font-family: 'Poppins';
  			color: #2f3640;
  		}
      .purpura{
        background-color: rgb(87,16,178);
        color: white;
        font-weight: 600;
      }
      nav{
        text-align: end;
      }
      
    .container {
		position: absolute;
		top: 40%;
		left: 26%;
	}

 	table {
		width: 800px;
		border-collapse: collapse;
		overflow: hidden;
		box-shadow: 0 0 20px rgba(0,0,0,0.1);
        text-align: center;
	}
	
	table tr:hover {
    	background-color: rgb(204, 204, 204);
   		cursor: pointer;
  	}
  	
    table th{
        background-color: rgb(204, 204, 204);

    }
  	
    .input-group{
        border: none;
        position: absolute;
		top: 28%;
		left: 27%;

    }

    .btn-primary{
        padding-right: 24px;
        background-color: rgb(87,16,178);
        border-color: rgb(87,16,178);

    }
  </style>
</head>



<body>

    <div class="container-fluid">
      <nav class="row purpura py-3" >
        <div class="col-10"></div>
        <div class="col-1">
          <span>Administrador</span>
        </div>
        <div class="col-1">
          S
        </div>
      </nav>
    </div>

    <div class="input-group">
        <input type="text" placeholder="Search..">
        <button type="button" class="btn btn-primary"></button>
      </div>


    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>CI</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Celda 1</td>
                    <td>Celda 2</td>
                    <td>Celda 3</td>
                    <td>  </td>
                </tr>
                <tr>
                    <td>Celda 1</td>
                    <td>Celda 2</td>
                    <td>Celda 3</td>
                    <td>  </td>
                </tr>
                <tr>
                    <td>Celda 1</td>
                    <td>Celda 2</td>
                    <td>Celda 3</td>
                    <td>  </td>
                </tr>
                <tr>
                    <td>Celda 1</td>
                    <td>Celda 2</td>
                    <td>Celda 3</td>
                    <td>  </td>
                </tr>
                <tr>
                    <td>Celda 1</td>
                    <td>Celda 2</td>
                    <td>Celda 3</td>
                    <td> </td>
                </tr>
            </tbody>
        </table>
    </div>



    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
    crossorigin="anonymous"></script>
</body>
</html>
