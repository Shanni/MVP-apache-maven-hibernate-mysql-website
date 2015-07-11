package Apple.manager;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import Apple.model.Movie;
import Apple.model.Movie1;
import Apple.model.User;

public class MovieManager {

	EntityManager manager = AppleEntityManager.getEntityManager();
	EntityTransaction tx = AppleEntityManager.getEntityTransaction();

	public MovieManager() {

	}

	public MovieManager(EntityManager manager) {
		this.manager = manager;
	}


	public List<Movie1> getMoviewithKey(String key) {

		List<Movie1> movieList = manager.createQuery("Select m From Movie1 m where m.movieName like :key",
				Movie1.class)
				.setParameter("key","%"+key+"%")
				.getResultList();

		//for (int i = 0; i < movieList.size()-1; i++) {
//			System.out.print("list of movie:"+movieList.get(0).getMovieName() + "\n");
		//}
		if (movieList != null){
			for (int i = 0; i < movieList.size()-1; i++) {
				System.out.print("list of movie:"+movieList.get(i).getMovieName() + "\n");
			}
			System.out.print("There're movie");
			return movieList;
		}else
			return null;
	}

	public List<Movie1> getMoviewithFilter(String key) {

		List<Movie1> movieList = manager.createQuery("Select m From Movie1 m where m.movieType like :key",
				Movie1.class)
				.setParameter("key",key)
				.getResultList();

		//for (int i = 0; i < movieList.size()-1; i++) {
//			System.out.print("list of movie:"+movieList.get(0).getMovieName() + "\n");
		//}
		if (movieList != null){
			for (int i = 0; i < movieList.size()-1; i++) {
				System.out.print("list of movie in category:"+movieList.get(i).getMovieName() + "\n");
			}
			System.out.print("There're movie");
			return movieList;
		}else
			return null;
	}
	public Movie1 getMoviewithId(int key) {

		List<Movie1> movieList = manager.createQuery("Select m From Movie1 m where m.movieId like :key",
				Movie1.class).
				setParameter("key", 
						key).getResultList();

		if (movieList != null){
			for (int i = 0; i < movieList.size()-1; i++) {
				System.out.print("list of movie:"+movieList.get(i).getMovieName() + "\n");
			}
			System.out.print("There're movie");
			return movieList.get(0);
		}else
			return null;
	}

	public Movie getMovie(int MovieId) {
		List<Movie> listMovie = manager
				.createQuery(
						"select m.MovieName, m.release_date, m.mpaa_rating,  "
								+ "m.runtime, m.poster_url, m.movie_type from Movie m where m.MovieId =: id")
				.setParameter("id", MovieId).getResultList();
		if (listMovie.size() <= 0) {
			return null;
		} else
			return listMovie.get(0);
	}

	public int printNumOfMovies() {
		int numOfMovies = manager
				.createQuery("Select a From Movie1 a", Movie1.class)
				.getResultList().size();
		return numOfMovies;
	}

	public List<Movie1> getAllMovieIds() {
		List<Integer> movieList = manager.createQuery(
				"Select m.MovieId From Movie1 m").getResultList();
		List<Movie1> actuallMovieList = null;
		// while(movieList.listIterator().hasNext()){
		// actuallMovieList.add(getMovie(movieList.listIterator().next())) ;
		// }
		//
		return actuallMovieList;
	}

	public List<Movie1> getAllMovies() {
		List<Movie1> movieList = manager.createQuery("Select m From Movie1 m",
				Movie1.class).getResultList();

		for (int i = 0; i < movieList.size(); i++) {
			System.out.print(movieList.get(i).getMovieName() + "\n");
		}
		if (movieList != null)
			return movieList;
		else
			return null;
	}

}
