package Apple.model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2015-05-13T23:48:07.621-0400")
@StaticMetamodel(Movie.class)
public class Movie_ {
	public static volatile SingularAttribute<Movie, Integer> movieId;
	public static volatile SingularAttribute<Movie, String> movieType;
	public static volatile SingularAttribute<Movie, String> movieName;
	public static volatile SingularAttribute<Movie, String> mpaaRating;
	public static volatile SingularAttribute<Movie, String> posterUrl;
	public static volatile SingularAttribute<Movie, Date> releaseDate;
	public static volatile SingularAttribute<Movie, Integer> runtime;
}
