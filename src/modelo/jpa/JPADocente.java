package modelo.jpa;

import modelo.dao.UsuarioDAO;
import modelo.entidad.Docente;

public class JPADocente extends JPAGenericDAO<Docente, String> implements UsuarioDAO<Docente, String> {
	public JPADocente() {
		super(Docente.class);
		
	}
	@Override
	public Docente autorizar(String cedula) {
		return null;

	}
}
