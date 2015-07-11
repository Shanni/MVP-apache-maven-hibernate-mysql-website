package Apple.model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2015-05-14T01:14:17.567-0400")
@StaticMetamodel(Movie1.class)
public class Movie1_ {
	public static volatile SingularAttribute<Movie1, Integer> movieId;
	public static volatile SingularAttribute<Movie1, String> movieName;
	public static volatile SingularAttribute<Movie1, String> movieType;
	public static volatile SingularAttribute<Movie1, String> posterUrl;
	public static volatile SingularAttribute<Movie1, String> rating;
	public static volatile SingularAttribute<Movie1, Date> releaseTime;
	public static volatile SingularAttribute<Movie1, Integer> runtime;
	public static volatile SingularAttribute<Movie1, String> trailerUrl;
}
