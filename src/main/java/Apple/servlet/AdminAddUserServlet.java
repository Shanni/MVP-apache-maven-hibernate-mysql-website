package Apple.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Apple.manager.UserManager;
import Apple.model.User;

/**
 * Servlet implementation class AdminAddUserServlet
 */
public class AdminAddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserManager userManager = new UserManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/admin-adduser.jsp")
		.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		userManager.add(username, password, email);
	
		List<User> users=userManager.getAllUsers();
		request.getSession().setAttribute("users", users);
		request.getRequestDispatcher("/admin-account.jsp").forward(request, response);
	}

}
