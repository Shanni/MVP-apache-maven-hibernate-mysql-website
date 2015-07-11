package  Apple.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the theater database table.
 * 
 */
@Entity
@NamedQuery(name="Theater.findAll", query="SELECT t FROM Theater t")
public class Theater implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int theaterId;

	private String location;

	private String theaterName;

	private String zip;

	//bi-directional many-to-one association to TheaterHasMovie
	@OneToMany(mappedBy="theater")
	private List<TheaterHasMovie> theaterHasMovies;

	public Theater() {
	}

	public int getTheaterId() {
		return this.theaterId;
	}

	public void setTheaterId(int theaterId) {
		this.theaterId = theaterId;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTheaterName() {
		return this.theaterName;
	}

	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}

	public String getZip() {
		return this.zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public List<TheaterHasMovie> getTheaterHasMovies() {
		return this.theaterHasMovies;
	}

	public void setTheaterHasMovies(List<TheaterHasMovie> theaterHasMovies) {
		this.theaterHasMovies = theaterHasMovies;
	}

	public TheaterHasMovie addTheaterHasMovy(TheaterHasMovie theaterHasMovy) {
		getTheaterHasMovies().add(theaterHasMovy);
		theaterHasMovy.setTheater(this);

		return theaterHasMovy;
	}

	public TheaterHasMovie removeTheaterHasMovy(TheaterHasMovie theaterHasMovy) {
		getTheaterHasMovies().remove(theaterHasMovy);
		theaterHasMovy.setTheater(null);

		return theaterHasMovy;
	}

}