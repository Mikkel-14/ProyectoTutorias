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
import modelo.jpa.JPAFactory;

@WebServlet("/listarDepartamentoController")
public class listarDepartamentoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public listarDepartamentoController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Departamento> dptos = this.listar();
		request.setAttribute("dptos", dptos);
		getServletContext().getRequestDispatcher("/listaDepartamentos.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private List<Departamento> listar(){
		DAOFactory fabrica = new JPAFactory();
		return fabrica.crearDepartamentoDAO().listar();
	}
}
