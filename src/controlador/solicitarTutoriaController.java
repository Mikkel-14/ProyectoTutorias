package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import modelo.dao.DAOFactory;
import modelo.entidad.Departamento;
import modelo.entidad.Docente;
import modelo.jpa.JPAFactory;import modelo.jpa.JPAGenericDAO;


@WebServlet("/solicitarTutoriaController")
public class solicitarTutoriaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public solicitarTutoriaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		listarDepartamentos(request, response);
		String busqueda = request.getParameter("id");
		if(busqueda!=null) {
			response.getWriter().print(listarDocentes(busqueda));
			response.getWriter().close();
		}else {
		getServletContext().getRequestDispatcher("/solicitarTutoria.jsp").forward(request, response);}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void listarDepartamentos(HttpServletRequest req, HttpServletResponse resp){
		DAOFactory fabrica = new JPAFactory();
		List<Departamento> dptos = fabrica.crearDepartamentoDAO().listar();
		req.setAttribute("listaDptos", dptos);
	}
	
	private String listarDocentes(String id){
		DAOFactory fabrica = new JPAFactory();
		Departamento dpto = fabrica.crearDepartamentoDAO().leer(Integer.parseInt(id));
		List<Docente> d1 = (List<Docente>)fabrica.crearUsuarioDAO(JPAFactory.DOCENTE).listar();
		List<Docente> listFinal = new ArrayList<Docente>();
		for (Docente d: d1) {
			if(d.getDepartamento().equals(dpto)) {
				d.setTurnos(null);
				d.setTutorias(null);
				d.setDepartamento(null);
				d.setContraseña(null);
				listFinal.add(d);
			}
		}
		
		GsonBuilder parseador = new GsonBuilder();
		Gson gson = parseador.create();
		String json = gson.toJson(listFinal);
		return json;
		
	}

}
