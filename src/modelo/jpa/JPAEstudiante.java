package modelo.jpa;

import modelo.dao.UsuarioDAO;
import modelo.entidad.Estudiante;

public class JPAEstudiante extends JPAGenericDAO<Estudiante, String> implements UsuarioDAO {
	
	public JPAEstudiante() {
		super(Estudiante.class);
		
	}
	@Override
	public Estudiante autorizar(String cedula) {
		return null;

	}

}
