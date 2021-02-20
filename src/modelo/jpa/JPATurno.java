package modelo.jpa;

import java.util.List;

import modelo.dao.TurnoDAO;

import modelo.entidad.Turno;

public class JPATurno extends JPAGenericDAO<Turno, Integer> implements TurnoDAO {
	public JPATurno() {
		super(Turno.class);
		
	}

	@Override
	public List<Turno> listar() {
		// TODO Auto-generated method stub
		return null;
	}

}
