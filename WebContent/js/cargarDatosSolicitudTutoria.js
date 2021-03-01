let menuDepa = document.getElementById("dpto");
let menuDocentes = document.getElementById("docente");
let menuTurnos = document.getElementById("turnos");
let fechas = document.getElementById("fecha");
let horarioTutorias;

menuDocentes.addEventListener("change",traerTutorias);
menuDepa.addEventListener("change",traerDocentes);
fechas.addEventListener("change",filtrarTurnos);
function traerDocentes(){
	menuDocentes.textContent = "";
	let valor = menuDepa.value;
	let url = "http://localhost:8080/ProyectoTutorias/solicitarTutoriaController?id="+String(valor);
	let method = "GET";
	
	let peticion = new XMLHttpRequest();
	let respuesta;
	peticion.open(method,url,true);
	
	peticion.onreadystatechange = () =>{
		if(peticion.readyState == '4' && peticion.status=="200"){
			 respuesta = JSON.parse(peticion.responseText);
			 if(respuesta.length !=0){
				for(let z=0;z<respuesta.length;z++){
					let nuevaOpcion = document.createElement("option");
					nuevaOpcion.setAttribute("value",respuesta[z]["cedula"]);
					let texto = document.createTextNode(respuesta[z]["nombre"] +" "+ respuesta[z]["apellido"]);
					
					nuevaOpcion.appendChild(texto);
					menuDocentes.appendChild(nuevaOpcion);
				}
				traerTutorias();
			}
		}
	}
	peticion.send();
}

function traerTutorias(){
	let valor = menuDocentes.value;
	let url = "http://localhost:8080/ProyectoTutorias/solicitarTutoriaController?cedula="+String(valor);
	let method = "GET";
	//configurando AJAX
	let peticion = new XMLHttpRequest();
	let respuesta;
	peticion.open(method,url,true);
	peticion.onreadystatechange = () => {
		if(peticion.readyState == '4' && peticion.status=="200"){
			respuesta = JSON.parse(peticion.responseText);
			horarioTutorias = respuesta;
		}
	}
	peticion.send();
}

function filtrarTurnos(){
	menuTurnos.textContent ="";
	let valores = fechas.value;
	let listaFecha = valores.split("-");
	let date = new Date(parseInt(listaFecha[0]),parseInt(listaFecha[1]),parseInt(listaFecha[2]));
	let dia;
	console.log(date.getDay());
	switch (date.getDay()){
		case 1:
			dia = "l";
			break;
		case 2:
			dia = "m";
			break;
		case 3:
			dia = "x";
			break;
		case 4:
			dia = "j";
			break;
		case 5:
			dia = "v";
			break;
	}
	if(horarioTutorias.length !=0){
		for(let z=0; z<horarioTutorias.length;z++){
			if(horarioTutorias[z].dia == dia){
				let nuevaOpcion = document.createElement("option");
				nuevaOpcion.setAttribute("value",horarioTutorias[z].idTurno);
				let texto = document.createTextNode(horarioTutorias[z].horaInicio);
				nuevaOpcion.appendChild(texto);
				menuTurnos.appendChild(nuevaOpcion);
			}
		}
	}
}
document.onload = traerDocentes();