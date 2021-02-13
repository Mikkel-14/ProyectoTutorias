package modelo.jpa;

import modelo.dao.DepartamentoDAO;
import modelo.entidad.Departamento;

public class JPADepartamento extends JPAGenericDAO<Departamento, Integer> implements DepartamentoDAO {
	public JPADepartamento() {
		super(Departamento.class);
		
	}
	
}
