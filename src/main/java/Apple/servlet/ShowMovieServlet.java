package Apple.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Apple.manager.MovieManager;
import Apple.manager.UserManager;
import Apple.model.Movie;
import Apple.model.Movie1;
import Apple.model.User;

/**
 * Servlet implementation class ShowMovieServlet
 */
public class ShowMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	MovieManager movieManager=new MovieManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowMovieServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Movie1> movieList = movieManager.getAllMovies();
		request.getSession().setAttribute("movies", movieList);
		this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
