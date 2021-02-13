package modelo.jpa;

import modelo.dao.DepartamentoDAO;

public class JPADepartamento extends JPAGenericDAO<Departamento, Integer> implements DepartamentoDAO {
	public JPADepartamento() {
		super(Departamento.class);
		
	}
	
}
