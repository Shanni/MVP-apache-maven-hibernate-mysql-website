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
 * Servlet implementation class DeleteUserServlet
 */
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserManager userManager=new UserManager();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		
		userManager.delete(id);
		System.out.print("üser deleted");
		request.setAttribute("message", "deleted user with id" + id);
//		request.setAttribute("edit-user",username);
		
		List<User> users=userManager.getAllUsers();
		request.getSession().setAttribute("users", users);
		request.getRequestDispatcher("/admin-account.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		
		userManager.delete(id);
		System.out.print("user deleted");
		request.setAttribute("message", "deleted user with id" + id);
//		request.setAttribute("edit-user",username);
		
		List<User> users=userManager.getAllUsers();
		request.getSession().setAttribute("users", users);
		request.getRequestDispatcher("/admin-account.jsp").forward(request, response);
	}

}
