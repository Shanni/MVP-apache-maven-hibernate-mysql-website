package Apple.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Apple.manager.MovieManager;
import Apple.model.Movie1;
import Apple.model.User;

/**
 * Servlet implementation class MovieDescriptionServlet
 */
public class MovieDescriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MovieManager movieManager=new MovieManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieDescriptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Integer i=Integer.parseInt(request.getParameter("item"));
		Movie1 movie=(Movie1) movieManager.getMoviewithId(i);
		request.getSession().setAttribute("movie",movie);
		this.getServletContext().getRequestDispatcher("/movie_description.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
