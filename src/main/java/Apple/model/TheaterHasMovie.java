package  Apple.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the theater_has_movie database table.
 * 
 */
@Entity
@Table(name="theater_has_movie")
@NamedQuery(name="TheaterHasMovie.findAll", query="SELECT t FROM TheaterHasMovie t")
public class TheaterHasMovie implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="theater_has_moviecol")
	private int theaterHasMoviecol;

	@Column(name="theater_has_moviecol1")
	private String theaterHasMoviecol1;

	//bi-directional many-to-one association to Theater
	@ManyToOne
	private Theater theater;

	//bi-directional many-to-one association to Movie
	@ManyToOne
	private Movie movie;

	public TheaterHasMovie() {
	}

	public int getTheaterHasMoviecol() {
		return this.theaterHasMoviecol;
	}

	public void setTheaterHasMoviecol(int theaterHasMoviecol) {
		this.theaterHasMoviecol = theaterHasMoviecol;
	}

	public String getTheaterHasMoviecol1() {
		return this.theaterHasMoviecol1;
	}

	public void setTheaterHasMoviecol1(String theaterHasMoviecol1) {
		this.theaterHasMoviecol1 = theaterHasMoviecol1;
	}

	public Theater getTheater() {
		return this.theater;
	}

	public void setTheater(Theater theater) {
		this.theater = theater;
	}

	public Movie getMovie() {
		return this.movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

}