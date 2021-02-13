package modelo.jpa;

import modelo.dao.DAOFactory;
import modelo.dao.DepartamentoDAO;
import modelo.dao.UsuarioDAO;

public class JPAFactory extends DAOFactory {
	

	@Override
	public UsuarioDAO crearUsuarioDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DepartamentoDAO crearDepartamentoDAO() {
		// TODO Auto-generated method stub
		return new JPADepartamento();
	}

}
