package net.slipp.dao.users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.slipp.domain.users.User;

@WebServlet("/users/updateForm")
public class UpdateFormUserServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		/*Object object = session.getAttribute(LoginServlet.SESSION_USER_ID);
		if( object == null) {
			resp.sendRedirect("/");
			return;
		}
		
		String userId = (String)object;
		System.out.println("User Id:" + userId);
		UserDao userDao = new UserDao();
		try {
			User user = userDao.findById(userId);
			req.setAttribute("user", user);
			RequestDispatcher rd = req.getRequestDispatcher("/form.jsp");
			rd.forward(req, resp);
		}catch (Exception e) {
		}*/
	}
	

}
