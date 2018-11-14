package util;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

 

public class Conexion<T> {
	private Class<T> c;
	private static EntityManager em = null;
	
	public Conexion() {
		em = this.getEm();
	}
	
	public Conexion(Class<T> c) {
		em = this.getEm();
		this.c = c;
	}
	
	public void setC(Class<T> c){
		this.c = c;
	}
	
	public static EntityManager getEm(){
		if ( em == null ) {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("preprevio");
            em = emf.createEntityManager();
        }
		return em;
	}
	
	public <E> T find(E id){ //buscar
		System.out.println("esta buscandooo el id");
		T object = (T) em.find(c, id);
		return object;
	}
	
	
	
	public List<T> list(){
		TypedQuery<T> consulta= em.createNamedQuery(c.getSimpleName()+".findAll", c);
		List<T> lista = (List<T>) consulta.getResultList();
		return lista;
	}
	
	
	public String insert(T o){
		String msn=null;
		try {
			em.getTransaction().begin();
			em.persist(o);
			em.getTransaction().commit();
			msn="se ha insertado bien";
		} catch (Exception e) {
			
			e.printStackTrace();
			msn="error mal";
		}finally {
			//em.close();
		}
		return msn;
		
	}
	
	public void update(T o){ // actualizar
		try {
			System.out.println("entro al try de actualizar");
			em.getTransaction().begin();
			em.merge(o);
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("entro al catch de actualizar");
			e.printStackTrace();
		}finally {
			//em.close();
		}
		
	}
	
	public void delete(T o){
		try {
			System.out.println("entro al try de eliminar");
			em.getTransaction().begin();
			em.remove(o);
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("entro al catch de eliminar");
			e.printStackTrace();
		}finally {
			//em.close();
		}
		
	}
}
