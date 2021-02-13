package modelo.jpa;

import modelo.dao.UsuarioDAO;

public class JPADocente extends JPAGenericDAO<Docente, String> implements UsuarioDAO {
	public JPADocente() {
		super(Docente.class);
		
	}
	@Override
	public Docente autorizar(String cedula) {
		return null;

	}
}
