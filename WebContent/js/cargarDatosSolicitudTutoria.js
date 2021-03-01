let menuDepa = document.getElementById("dpto");
let menuDocentes = document.getElementById("docente");
let menuTurnos = document.getElementById("turnos");

menuDepa.addEventListener("change",traerDocentes);

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
			}
		}
	}
	peticion.send();
	
	
	
}