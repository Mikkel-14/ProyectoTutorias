/**
 * 
 */
package modelo.dao;

/**
 * @author gueva
 *
 */
public interface UsuarioDAO extends GenericDAO<Usuario, String> {
	public Usuario autorizar(String cedula);
}
