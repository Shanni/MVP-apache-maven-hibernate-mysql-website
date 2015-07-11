package Apple.manager;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.RollbackException;

import Apple.model.User;

public class UserManager {

	EntityManager manager = AppleEntityManager.getEntityManager();
	EntityTransaction tx = AppleEntityManager.getEntityTransaction();

	public UserManager() {

	}

	public UserManager(EntityManager manager) {
		this.manager = manager;
	}

	public User find(String name, String password) {
		manager = AppleEntityManager.getEntityManager();
		// + "'"+name+"'"
		// , User.class)//+" AND " + "a.password = :" + password)
		List<User> userList;
		try {
			userList = manager
					.createQuery(
							"select a From User a "
									+ "where a.userName =:name ", User.class)
					.setParameter("name", name).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		if (userList == null)
			return null;
		int num = userList.size();
		if (num == 1) {
			if (userList.get(0).getPassword().equals(password)) {
				return userList.get(0);
			}
		}

		return null;
	}

	public User findbyUsername(String name) {
		manager = AppleEntityManager.getEntityManager();
		List<User> userList;
		try {
			userList = manager
					.createQuery(
							"select a From User a "
									+ "where a.userName =:name ", User.class)
					.setParameter("name", name).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		if (userList == null)
			return null;
		int num = userList.size();
		if (num == 1) {	
				return userList.get(0);
		}

		return null;
	}
	
	public User findbyId(int id) {
		manager = AppleEntityManager.getEntityManager();
		List<User> userList;
		try {
			userList = manager
					.createQuery(
							"select a From User a "
									+ "where a.userId =:id ", User.class)
					.setParameter("id", id).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		if (userList == null)
			return null;
		int num = userList.size();
		if (num == 1) {	
				return userList.get(0);
		}

		return null;
	}

	public void add(String name, String email, String password) {
		manager = AppleEntityManager.getEntityManager();
		tx = AppleEntityManager.getEntityTransaction();
		User user = new User(name, email, password, 0);
		
		tx.begin();
		try {
			
			manager.persist(user);
//			manager.flush();

		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			tx.commit();
			
			System.out.print("Commit should be rollbacked");
		} catch (RollbackException e) {
		}

	}
	
	public void update(int id,String name, String email, String password, int role) {
		manager = AppleEntityManager.getEntityManager();
		tx = AppleEntityManager.getEntityTransaction();
		
		User user = manager.find(User.class, id);
		
		tx.begin();
		try {
			
			user.setUserName(name);
			user.setPassword(password);
	        user.setEmail(email);
	        user.setRole(role);
	        
			manager.merge(user);
			 System.out.println("\n password    -- " + user.getPassword());
	          
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			tx.commit();
			
		} catch (RollbackException e) {
			System.out.print("Commit should be rollbacked.");
		}

	}
	
	public void delete(int id) {
		manager = AppleEntityManager.getEntityManager();
		tx = AppleEntityManager.getEntityTransaction();
		
		tx.begin();
		try {
			User user = manager.find(User.class, id);
			manager.remove(user);
			 System.out.println("\n removed    -- " + user.getUserName());
	          
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			tx.commit();
			
		} catch (RollbackException e) {
			System.out.print("Commit should be rollbacked.");
		}

	}

	public int printNumOfUsers() {
		int numOfUsers = manager
				.createQuery("Select a From User a", User.class)
				.getResultList().size();
		return numOfUsers;
	}

	public List<User> getAllUsers() {
		List<User> userList = manager.createQuery("Select a From User a",
				User.class).getResultList();
		return userList;
	}

}
