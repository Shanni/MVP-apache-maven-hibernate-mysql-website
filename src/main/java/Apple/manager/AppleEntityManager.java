package Apple.manager;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class AppleEntityManager {
	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction tx;
	
	public static EntityTransaction getEntityTransaction(){
		if(manager==null){
			factory = Persistence
					.createEntityManagerFactory("MIS");
			manager = factory.createEntityManager();
		}
		if(tx==null){
			tx = manager.getTransaction();
		}
		return tx;
	}
	
	public static EntityManager getEntityManager(){
		if(manager==null){
			factory = Persistence
					.createEntityManagerFactory("MIS");
			manager = factory.createEntityManager();
		}
		return manager;
	}
}
