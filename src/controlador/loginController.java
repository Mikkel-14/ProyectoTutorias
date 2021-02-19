package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.dao.DAOFactory;
import modelo.entidad.Docente;
import modelo.jpa.JPAFactory;

@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarSolicitud(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarSolicitud(request, response);
	}

	private void procesarSolicitud(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		
		
		String usuario = req.getParameter("usuario");
		String password = req.getParameter("password");
		//admin //admin2021
		
		if(usuario.equals("admin") && password.equals("admin2021")){
			//getServletContext().getRequestDispatcher("/ModuloAdministrador.jsp").forward(req, resp);
			HttpSession sesion = req.getSession();
			sesion.setAttribute("usuario", usuario);
			String tipo = "admin";
			sesion.setAttribute("tipo", tipo);
			//Navego hacia el JSP
			getServletContext().getRequestDispatcher("/ModuloAdministrador.jsp").forward(req, resp);
			
			
		} else {
				DAOFactory fabrica = new JPAFactory();
				Docente docente = (Docente)fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).autorizar(usuario, password);
			
			if (docente != null){
				HttpSession sesion = req.getSession();
				sesion.setAttribute("usuario", usuario);
				String tipo = "docente";
				sesion.setAttribute("tipo", tipo);
				//Navego hacia el JSP
				getServletContext().getRequestDispatcher("/docentePasswd.jsp").forward(req, resp);
				
			}else{
				resp.sendRedirect("index.jsp");
				
			}
		}
			

		}

		
	}


