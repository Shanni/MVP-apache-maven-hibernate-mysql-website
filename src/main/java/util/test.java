package util;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import Apple.jpa.JpaTest;
import Apple.manager.AppleEntityManager;
import Apple.manager.MovieManager;
import Apple.model.Movie1;

public class test {
	private EntityManager manager;

	public test(EntityManager manager) {
		this.manager = manager;
	}

	public static void main(String[] args){
		EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("MIS");
		EntityManager manager = factory.createEntityManager();
		test test = new test(manager);

		EntityTransaction tx = manager.getTransaction();
//		tx.begin();
//		try {
//			test.createMovies();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		tx.commit();

		//test.getMoviewithKey("2");

		System.out.println(".. done");
		List<Movie1> list=((MovieManager) manager).getMoviewithKey("1");
		for(int i=0;i<list.size();i++){
			System.out.print("this is movie: "+ list.get(i).getMovieName());
		}
	}
	public List<Movie1> getMoviewithKey(String key) {

		List<Movie1> movieList = manager.createQuery("Select m From Movie1 m where m.movieId =: key",
				Movie1.class).setParameter("key", key).getResultList();

		for (int i = 0; i < movieList.size(); i++) {
			System.out.print("list of movie:"+movieList.get(i).getMovieName() + "\n");
		}
		if (movieList != null)
			return movieList;
		else
			return null;
	}
}
