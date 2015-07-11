package Apple.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2015-04-29T12:45:28.412-0400")
@StaticMetamodel(Theater.class)
public class Theater_ {
	public static volatile SingularAttribute<Theater, Integer> theaterId;
	public static volatile SingularAttribute<Theater, String> location;
	public static volatile SingularAttribute<Theater, String> theaterName;
	public static volatile SingularAttribute<Theater, String> zip;
	public static volatile ListAttribute<Theater, TheaterHasMovie> theaterHasMovies;
}
