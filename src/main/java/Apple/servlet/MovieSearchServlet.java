package Apple.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Apple.manager.MovieManager;
import Apple.model.Movie1;

/**
 * Servlet implementation class MovieSearchServlet
 */
public class MovieSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MovieManager movieManager=new MovieManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String key = request.getParameter("search_key"); 
		System.out.print("this is search_key"+key);
		List<Movie1> movieList = movieManager.getMoviewithKey(key);
		if(movieList.isEmpty())
			movieList = movieManager.getMoviewithFilter(key);
		request.getSession().setAttribute("movies", movieList);
//		request.getSession().setAttribute("randomname", movieList.get(0).getMovieName());
//		System.out.print(movieList.get(0).getMovieName());
		this.getServletContext().getRequestDispatcher("/movielist.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String key = request.getParameter("search_key"); 
		System.out.print("this is search_key"+key);
		List<Movie1> movieList = movieManager.getMoviewithKey(key);
		if(movieList==null)
			movieList = movieManager.getMoviewithFilter(key);
		//List<Movie1> movieList = movieManager.getMoviewithKey(key);
		request.getSession().setAttribute("movies", movieList);
//		request.getSession().setAttribute("randomname", movieList.get(0).getMovieName());
//		System.out.print(movieList.get(0).getMovieName());
		this.getServletContext().getRequestDispatcher("/movielist.jsp").forward(request, response);
			
	}

}
