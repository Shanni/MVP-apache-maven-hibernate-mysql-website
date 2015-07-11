package Apple.model;

import java.sql.Time;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2015-04-29T12:45:00.723-0400")
@StaticMetamodel(Ticket.class)
public class Ticket_ {
	public static volatile SingularAttribute<Ticket, Integer> ticketId;
	public static volatile SingularAttribute<Ticket, Date> orderDate;
	public static volatile SingularAttribute<Ticket, Time> ordertime;
	public static volatile SingularAttribute<Ticket, byte[]> paid;
	public static volatile SingularAttribute<Ticket, User> user;
	public static volatile SingularAttribute<Ticket, Movie> movie;
}
