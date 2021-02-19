package controlador;
import java.io.IOException;
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

@WebServlet("/actualizarContraseñaDocenteController")
public class actualizarContraseñaDocenteController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public actualizarContraseñaDocenteController() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cedula = request.getParameter("cedula");//Usuario jsp
		String contraseñaActual = request.getParameter("passwd");
		String nuevaContraseña = request.getParameter("passwd1");
		String nuevaContraseñaVerificar = request.getParameter("passwd2");

		DAOFactory fabrica = new JPAFactory();
		Docente docente = (Docente) fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).leer(cedula);
		
		if ( nuevaContraseña == nuevaContraseñaVerificar){
			Docente docenteNuevo = new Docente(cedula, docente.getNombre(), docente.getApellido(), nuevaContraseña);
			fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).actualizar(docente);
			request.setAttribute("mensajeExito", "Se ha realizado correctamente el cambio de contraseñas");
			response.sendRedirect("actualizarContraseñaDocenteController");
		}else{
			request.setAttribute("mensajeError", "Las contraseñas no coinciden");
		}
	}
	
}
