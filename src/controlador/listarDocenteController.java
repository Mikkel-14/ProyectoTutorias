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


@WebServlet("/listarDocenteController")
public class listarDocenteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public listarDocenteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Docente> nomina = this.listar();
		request.setAttribute("nomina", nomina);
		System.out.println(nomina);
		getServletContext().getRequestDispatcher("/listaDocentes.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private List<Docente> listar(){
		DAOFactory fabrica = new JPAFactory();
		return (List<Docente>)fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).listar();
	}

}
