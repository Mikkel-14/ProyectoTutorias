package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarSolicitud(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesarSolicitud(request, response);
	}

	private void procesarSolicitud(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String usuario = req.getParameter("usuario");
		String password = req.getParameter("password");
		
		//admin //admin2021
		if(usuario.equals("admin") && password.equals("admin2021")){
			//getServletContext().getRequestDispatcher("/ModuloAdministrador.jsp").forward(req, resp);
			resp.sendRedirect("ModuloAdministrador.jsp");
			
		} else {
			resp.sendRedirect("index.jsp");
		}
	}

}
