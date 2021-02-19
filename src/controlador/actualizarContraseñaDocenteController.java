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

@WebServlet("/actualizarContrase�aDocenteController")
public class actualizarContrase�aDocenteController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public actualizarContrase�aDocenteController() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String cedula = request.getParameter("cedula");//Usuario jsp
		String contrase�aActual = request.getParameter("passwd");
		String nuevaContrase�a = request.getParameter("passwd1");
		String nuevaContrase�aVerificar = request.getParameter("passwd2");

		DAOFactory fabrica = new JPAFactory();
		Docente docente = (Docente) fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).leer(cedula);
		
		if ( nuevaContrase�a == nuevaContrase�aVerificar){
			Docente docenteNuevo = new Docente(cedula, docente.getNombre(), docente.getApellido(), nuevaContrase�a);
			fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).actualizar(docente);
			request.setAttribute("mensajeExito", "Se ha realizado correctamente el cambio de contrase�as");
			response.sendRedirect("actualizarContrase�aDocenteController");
		}else{
			request.setAttribute("mensajeError", "Las contrase�as no coinciden");
		}
	}
	
}
