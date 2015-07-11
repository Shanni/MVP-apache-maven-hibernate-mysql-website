package Apple.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Apple.manager.UserManager;
import Apple.model.User;
import Apple.util.SendEmailUtil;

/**
 * Servlet implementation class SignUpServlet
 */
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserManager userManager = new UserManager();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/signup.jsp")
				.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String password_c = request.getParameter("password_comfirm");
		
		String check_box = request.getParameter("subscription_check");

		if(check_box==null){
			request.setAttribute("error",
					"please comfirm with terms and conditions.");
			request.getRequestDispatcher("/signup.jsp").forward(request,
					response);
			return;
		}
		
		if(username==null || email==null || password ==null){
			request.setAttribute("error",
					"please enter username, email and password.");
			request.getRequestDispatcher("/signup.jsp").forward(request,
					response);
			return;
		}
		if (!password.equals(password_c) ) {
			request.setAttribute("error",
					"password doesn't match, please enter again.");
			request.getRequestDispatcher("/signup.jsp").forward(request,
					response);
		} else if (userManager.findbyUsername(username) != null) {

			request.setAttribute("error", "This user exists, please login");
			request.getRequestDispatcher("/signup.jsp").forward(request,
					response);

		} else {
			userManager.add(username,password_c, email);
			User user = userManager.find(username, password_c);
			request.getSession().setAttribute("currentUser", user);

			/** send email to user */
			String subject="Thanks for register";
			String content="Dear Friend,\n\n"
					+ "Welcome to Apple MIS website";
			SendEmailUtil.sendMail(email, subject, content);
			
            request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

}
