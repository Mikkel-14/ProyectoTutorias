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
import modelo.jpa.JPAFactory;

@WebServlet("/a�adirDocenteController")
public class a�adirDocenteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarSolicitud(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarSolicitud(request, response);
	}

	private void procesarSolicitud(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String cedula = req.getParameter("numCedula");
		String nombre = req.getParameter("nombreDocente");
        String apellido = req.getParameter("apellidoDocente");
		//TODO validar la cedula (?
        Docente docente = new Docente(cedula, nombre, apellido);
        
        DAOFactory fabrica = new JPAFactory();
        Docente d = (Docente)fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).leer(cedula);
    
        if (d == null) {
        	fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).crear(docente);		
            resp.sendRedirect("listaDocentes.jsp");
        } else {
        	resp.sendRedirect("a�adirDocente.jsp");
        }
        
        
	}

}
