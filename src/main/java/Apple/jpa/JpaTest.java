package Apple.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import Apple.model.Movie;
import Apple.model.Movie1;
import Apple.model.Theater;
import Apple.model.User;

public class JpaTest {

	private EntityManager manager;

	public JpaTest(EntityManager manager) {
		this.manager = manager;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("MIS");
		EntityManager manager = factory.createEntityManager();
		JpaTest test = new JpaTest(manager);

		EntityTransaction tx = manager.getTransaction();
//		tx.begin();
//		try {
//			test.createMovies();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		tx.commit();

//		test.listMovies();
		test.listUsers();

		System.out.println(".. done");
	}

	private void createMovies() {
		int numOfMovies = manager
				.createQuery("Select a From Movie a", Movie.class)
				.getResultList().size();
		if (numOfMovies<10) {
//			Theater theater = new Theater("java");
//			manager.persist(theater);
//			Theater theater2=new Theater("MIS");
//			manager.persist(theater2);

//			Movie movie=new Movie("DUFF");
//			manager.persist(movie);
//			manager.persist(new Movie("Little White"));

		}
	}

	private void listMovies() {
		List<Movie1> resultList = manager.createQuery("Select a From Movie1 a", Movie1.class).getResultList();
		System.out.println("num of movies:" + resultList.size());
		for (Movie1 next : resultList) {
			System.out.println("next movie: " + next.getMovieName() + "\t\t" 
		+ next.getMovieType());
		}
	}
	private void listUsers() {
			List<User> resultList = manager.createQuery(
					"Select a From User a", User.class).getResultList();
			System.out.println("num of users:" + resultList.size());
			for (User next : resultList) {
				System.out.println("next user: " + next.getUserName() + "\t\t"+next.getPassword());
			}
	}

}
