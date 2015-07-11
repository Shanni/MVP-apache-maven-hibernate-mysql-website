package Apple.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Apple.manager.MovieManager;
import Apple.model.Movie;
import Apple.model.Movie1;
import Apple.model.User;
import Apple.util.SendEmailUtil;

/**
 * Servlet implementation class HomeServlet
 */
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	MovieManager movieManager=new MovieManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Movie1> movieList = movieManager.getAllMovies();
		
//		List<Movie1> movieList = movieManager.getMoviewithKey("Mom");
		if(movieList!=null)
		request.getSession().setAttribute("movies", movieList);
//		request.getSession().setAttribute("randomname", movieList.get(0).getMovieName());
//		System.out.print(movieList.get(0).getMovieName());
		this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
