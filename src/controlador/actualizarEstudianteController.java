package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.DAOFactory;
import modelo.entidad.Estudiante;
import modelo.jpa.JPAFactory;

/**
 * Servlet implementation class actualizarEstudianteController
 */
@WebServlet("/actualizarEstudianteController")
public class actualizarEstudianteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public actualizarEstudianteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cedula =  request.getParameter("act");
		DAOFactory fabrica = new JPAFactory();
		Estudiante e = (Estudiante)fabrica.crearUsuarioDAO(JPAFactory.ESTUDIANTE).leer(cedula);
		request.setAttribute("Nombre", e.getNombre());
    	request.setAttribute("Cedula", e.getCedula());
    	request.setAttribute("Apellido", e.getApellido());
    	getServletContext().getRequestDispatcher("/actualizarEstudiante.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarSolicitud(request, response);
	}
	
	private void procesarSolicitud(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String cedula = req.getParameter("cedula");
		String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		boolean cedulaValida = validación.validadorDeCedula(cedula);
		System.out.println("VALOR CEDULA"+ cedula);
		DAOFactory fabrica = new JPAFactory();
		
		Estudiante e = (Estudiante)fabrica.crearUsuarioDAO(JPAFactory.ESTUDIANTE).leer(cedula);

		if(cedulaValida && e != null) {
			String password = e.getContraseña();
			Estudiante estudiante = new Estudiante(cedula, password, nombre, apellido);
			fabrica.crearUsuarioDAO(JPAFactory.ESTUDIANTE).actualizar(estudiante);
        	req.setAttribute("mensajeExito", "Se actualizó el estudiante");//mensaje
			getServletContext().getRequestDispatcher("/actualizarEstudiante.jsp").forward(req, resp);
		}else {
			req.setAttribute("Nombre", nombre);
        	req.setAttribute("Cedula", cedula);
        	req.setAttribute("Apellido", apellido);
        	if(!cedulaValida)
        		req.setAttribute("mensajeError", "Cédula incorrecta");
        	else
        		req.setAttribute("mensajeError", "Estudiante no registrado");
			getServletContext().getRequestDispatcher("/actualizarEstudiante.jsp").forward(req, resp);
		    
		}
		
        
	}

}
