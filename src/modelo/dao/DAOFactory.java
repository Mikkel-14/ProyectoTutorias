package modelo.dao;

public abstract class DAOFactory {
	public static DAOFactory crearFactoria() {
		return null;
	}
	
	public abstract UsuarioDAO crearUsuarioDAO();
	public abstract DepartamentoDAO crearDepartamentoDAO();

}
