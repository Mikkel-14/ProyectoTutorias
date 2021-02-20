package modelo.jpa;

import java.util.List;

import modelo.dao.TutoriaDAO;

import modelo.entidad.Tutoria;

public class JPATutoria extends JPAGenericDAO<Tutoria, Integer> implements TutoriaDAO {
	public JPATutoria() {
		super(Tutoria.class);
		
	}

	@Override
	public List<Tutoria> listar() {
		// TODO Auto-generated method stub
		return null;
	}
}
