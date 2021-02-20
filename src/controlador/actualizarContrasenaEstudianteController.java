package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.dao.DAOFactory;
import modelo.entidad.Estudiante;
import modelo.jpa.JPAFactory;

/**
 * Servlet implementation class actualizarContrasenaEstudianteController
 */
@WebServlet("/actualizarContrasenaEstudianteController")
public class actualizarContrasenaEstudianteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public actualizarContrasenaEstudianteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession();

		String cedula = (String) sesion.getAttribute("usuario");//Usuario jsp
		
		String contrase�aActual = request.getParameter("passwd");
		String nuevaContrase�a = request.getParameter("passwd1");
		String nuevaContrase�aVerificar = request.getParameter("passwd2");
		System.out.println(cedula);
		DAOFactory fabrica = new JPAFactory();
		Estudiante estudiante = (Estudiante) fabrica.crearUsuarioDAO(JPAFactory.ESTUDIANTE).leer(cedula);
		if ( nuevaContrase�a.equals(nuevaContrase�aVerificar) && cedula.equals(estudiante.getCedula()) 
				&& contrase�aActual.equals(estudiante.getContrase�a())){
			Estudiante estudianteNuevo = new Estudiante(cedula, nuevaContrase�a, estudiante.getNombre(), estudiante.getApellido());
			fabrica.crearUsuarioDAO(JPAFactory.ESTUDIANTE).actualizar(estudianteNuevo);
			response.sendRedirect("estudiantePasswd.jsp");
		}else{
			request.setAttribute("mensajeError", "Las contrase�as no coinciden");
			getServletContext().getRequestDispatcher("/estudiantePasswd.jsp").forward(request, response);
		}
	}

}
