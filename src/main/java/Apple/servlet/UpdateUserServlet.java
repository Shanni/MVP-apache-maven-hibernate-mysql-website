package Apple.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Apple.manager.UserManager;
import Apple.model.User;
import Apple.util.SendEmailUtil;

/**
 * Servlet implementation class UpdateUserServlet
 */
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserManager userManager = new UserManager();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Integer i = Integer.parseInt(request.getParameter("id"));
		User user = userManager.findbyId(i);
		if (user != null) {
			System.out.print("\nedit user with name: " + user.getUserName());
			request.getSession().setAttribute("user", user);
			request.getRequestDispatcher("/edituser.jsp")
					.forward(request, response);
		} else {
			request.setAttribute("error", "Sorry, user does not exit");
			// request.getRequestDispatcher("/list.jsp").forward(request,
			// response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		userManager.update(id, username, email, password, 0);

		request.setAttribute("message", "edited user with id" + id);
		request.setAttribute("edit-user",username);
		
		List<User> users=userManager.getAllUsers();
		request.getSession().setAttribute("users", users);
		request.getRequestDispatcher("/admin-account.jsp").forward(request, response);

	}

}
