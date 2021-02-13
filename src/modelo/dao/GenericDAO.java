package modelo.dao;

public interface GenericDAO <T,ID> {
	public void crear (T entity);
	public T leer(ID id);
	public void actualizar (T entity);
	public void eliminar (T entity);
	public void eliminarPorId (ID id);
	

}
