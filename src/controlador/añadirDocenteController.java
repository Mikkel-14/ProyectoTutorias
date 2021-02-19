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

	private void procesarSolicitud(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String cedula = req.getParameter("numCedula");
		String nombre = req.getParameter("nombreDocente");
        String apellido = req.getParameter("apellidoDocente");
        Integer idDpto = Integer.parseInt(req.getParameter("departamento"));
        
        Docente docente = null;
        
        boolean bandera= validaci�n.validadorDeCedula(cedula);
        
        if(bandera==true) {
	        DAOFactory fabrica = new JPAFactory();
	        Docente d = (Docente)fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).leer(cedula);
	        if (d == null) {
				// Departamento
				Departamento dpto = fabrica.crearDepartamentoDAO().leer(idDpto);
				System.out.println("Entrando: " + dpto);
				docente = new Docente(cedula, nombre, apellido, dpto);
				System.out.println("Saliendo >:v: " + docente.getDepartamento());
	        	fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).crear(docente);
				req.setAttribute("estadoSolicitud", true);//mensaje
				getServletContext().getRequestDispatcher("/a�adirDocente.jsp").forward(req, resp);
	        } else {
				req.setAttribute("docente", docente);//Docente
				req.setAttribute("estadoSolicitud", false);//mensaje
				//Navego hacia el JSP
				getServletContext().getRequestDispatcher("/a�adirDocente.jsp").forward(req, resp);
	        }
        } else {
        	req.setAttribute("docente", docente);//Docente
			req.setAttribute("estadoSolicitud", false);//mensaje
			//Navego hacia el JSP
			getServletContext().getRequestDispatcher("/a�adirDocente.jsp").forward(req, resp);	
        }
        
	}

}
