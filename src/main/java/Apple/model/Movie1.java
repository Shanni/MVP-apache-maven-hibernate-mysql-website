package Apple.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the movie1 database table.
 * 
 */
@Entity
@NamedQuery(name="Movie1.findAll", query="SELECT m FROM Movie1 m")
public class Movie1 implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int movieId;

	@Column(name="movie_name")
	private String movieName;

	@Column(name="movie_type")
	private String movieType;

	@Column(name="poster_url")
	private String posterUrl;

	private String rating;

	@Temporal(TemporalType.DATE)
	@Column(name="release_time")
	private Date releaseTime;

	private int runtime;

	@Column(name="trailer_url")
	private String trailerUrl;

	public Movie1() {
	}

	public int getMovieId() {
		return this.movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getMovieName() {
		return this.movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getMovieType() {
		return this.movieType;
	}

	public void setMovieType(String movieType) {
		this.movieType = movieType;
	}

	public String getPosterUrl() {
		return this.posterUrl;
	}

	public void setPosterUrl(String posterUrl) {
		this.posterUrl = posterUrl;
	}

	public String getRating() {
		return this.rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public Date getReleaseTime() {
		return this.releaseTime;
	}

	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}

	public int getRuntime() {
		return this.runtime;
	}

	public void setRuntime(int runtime) {
		this.runtime = runtime;
	}

	public String getTrailerUrl() {
		return this.trailerUrl;
	}

	public void setTrailerUrl(String trailerUrl) {
		this.trailerUrl = trailerUrl;
	}

}