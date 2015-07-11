package Apple.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Apple.util.SendEmailUtil;

/**
 * Servlet implementation class SubscribeServlet
 */
public class SubscribeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubscribeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/subscribe.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("subscribe_email");
		request.getSession().setAttribute("message", "this is subscribed user:"+email);
		request.getSession().setAttribute("subscribe_email", null);
	
		String subject="Thanks for subscribe";
		String content="Dear Friend,\n\n"
				+ "Welcome to Apple MIS website";
		SendEmailUtil.sendMail(email, subject, content);
	
        request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

}
