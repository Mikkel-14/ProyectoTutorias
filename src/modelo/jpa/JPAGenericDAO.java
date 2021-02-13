package modelo.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import modelo.dao.GenericDAO;

public class JPAGenericDAO <T,ID> implements GenericDAO<T, ID> {
	protected EntityManager em;
	private Class<T> persistenceClass;
	
	public JPAGenericDAO(Class<T> persistenceCls) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoTutorias");
		em = emf.createEntityManager();
		this.persistenceClass=persistenceCls;
	}

	@Override
	public void crear(T entity) {
		em.getTransaction().begin();
		try {
			em.persist(entity);		
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error en Creaci�n JPAGenericDAO");
			if(em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		}

	}

	@Override
	public T leer(ID id) {
		return em.find(persistenceClass, id);
	}

	@Override
	public void actualizar(T entity) {
		em.getTransaction().begin();
		try {
			em.merge(entity);		
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error en Actualizaci�n JPAGenericDAO");
			if(em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		}		
	}

	@Override
	public void eliminar(T entity) {
		em.getTransaction().begin();
		try {
			em.remove(entity);		
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Error en Eliminaci�n JPAGenericDAO");
			if(em.getTransaction().isActive()) {
				em.getTransaction().rollback();
			}
		}		
		
	}

	@Override
	public void eliminarPorId(ID id) {
		T entity=this.leer(id);
		if(entity != null) {
			this.eliminar(entity);
		}
		
		
		
	}

}