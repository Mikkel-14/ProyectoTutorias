package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.DAOFactory;
import modelo.entidad.Departamento;
import modelo.entidad.Docente;
import modelo.entidad.Estudiante;
import modelo.jpa.JPAFactory;

@WebServlet("/registrarEstudianteController")
public class registrarEstudianteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarSolicitud(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarSolicitud(request, response);
	}

	private void procesarSolicitud(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String cedula = req.getParameter("cedula");
		String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String password = req.getParameter("password");
		String rpassword = req.getParameter("rpassword");
		boolean bandera=password.equals(rpassword);
		DAOFactory fabrica = new JPAFactory();
        Estudiante estudiante = new Estudiante(cedula, password, nombre, apellido);
		if(bandera==false) {
			req.setAttribute("mensajeError", "Las contraseñas no coinciden");
		}
		else {

			Estudiante e = (Estudiante)fabrica.crearUsuarioDAO(JPAFactory.ESTUDIANTE).leer(cedula);
	     
	        bandera = validadorDeCedula(cedula);
	        if (bandera==true) {
		        if (e!= null) {
		            bandera = false;
		            req.setAttribute("mensajeError", "Cédula ya registrada");
		        } 
		                         	      
	        } else {
	        	 req.setAttribute("mensajeError", "Cédula incorrecta");      	
	        }
		}
	        
        if (bandera) {
        	fabrica.crearUsuarioDAO(JPAFactory.ESTUDIANTE).crear(estudiante);		
            //resp.sendRedirect("listaDepartamentos.jsp");
        	req.setAttribute("mensajeExito", "Se ha registrado el estudiante");//mensaje
			getServletContext().getRequestDispatcher("/registrarEstudiante.jsp").forward(req, resp);
        } else {
        	req.setAttribute("Nombre", nombre);
        	req.setAttribute("Cedula", cedula);
        	req.setAttribute("Apellido", apellido);
			
			getServletContext().getRequestDispatcher("/registrarEstudiante.jsp").forward(req, resp);
        }
        
	}
	
	public boolean validadorDeCedula(String cedula) {
		boolean cedulaCorrecta = false;
		 
		try {
		 
		if (cedula.length() == 10) // ConstantesApp.LongitudCedula
		{
		int tercerDigito = Integer.parseInt(cedula.substring(2, 3));
		if (tercerDigito < 6) {
		// Coeficientes de validación cédula
		// El decimo digito se lo considera dígito verificador
		 int[] coefValCedula = { 2, 1, 2, 1, 2, 1, 2, 1, 2 };
		 int verificador = Integer.parseInt(cedula.substring(9,10));
		 int suma = 0;
		 int digito = 0;
		for (int i = 0; i < (cedula.length() - 1); i++) {
		 digito = Integer.parseInt(cedula.substring(i, i + 1))* coefValCedula[i];
		 suma += ((digito % 10) + (digito / 10));
		}
		 
		if ((suma % 10 == 0) && (suma % 10 == verificador)) {
		 cedulaCorrecta = true;
		}
		else if ((10 - (suma % 10)) == verificador) {
		 cedulaCorrecta = true;
		} else {
		 cedulaCorrecta = false;
		}
		} else {
		cedulaCorrecta = false;
		}
		} else {
		cedulaCorrecta = false;
		}
		} catch (NumberFormatException nfe) {
		cedulaCorrecta = false;
		} catch (Exception err) {
	
		cedulaCorrecta = false;
		}
		 
		if (!cedulaCorrecta) {
		
		}
		return cedulaCorrecta;
		}

}
