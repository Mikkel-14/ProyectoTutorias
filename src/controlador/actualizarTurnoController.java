package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.DAOFactory;
import modelo.entidad.Docente;
import modelo.entidad.Turno;
import modelo.jpa.JPAFactory;

@WebServlet("/actualizarTurnoController")
public class actualizarTurnoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public actualizarTurnoController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cedulaDocente = (String) request.getSession().getAttribute("usuario");
		DAOFactory fabrica = new JPAFactory();
		Docente docente = (Docente) fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).leer(cedulaDocente);
		List<Turno> turnos = docente.getTurnos();
		
		getServletContext().getRequestDispatcher("/actualizarTurno.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Falta que lea los que ya existen xdd
		String[] turnos = request.getParameterValues("turno");
		if (turnos != null) {
			System.out.println("------------------------------"); ////////////////////////////
			for (String turno: turnos) {
				System.out.println(turno); ///////////////////////////
				String[] datos = turno.split("-");
				DAOFactory fabrica = new JPAFactory();
				
				//Turno nuevoTurno
				//fabrica.crearTurnoDAO().crear(nuevoTurno);
			}
		} else {
			// Mensaje de "Seleccione algo si quiera xd"
		}
	}

}
