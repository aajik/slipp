package net.slipp.dao.users;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.support.xml.SqlXmlFeatureNotImplementedException;
import org.springframework.web.servlet.HttpServletBean;

import net.slipp.domain.users.User;

//import javax.servlet.http.HttpServlet;

@WebServlet("/users/create")
public class CreateUserServlet extends HttpServletBean {
	private static final Logger log = LoggerFactory.getLogger(CreateUserServlet.class);
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userId = request.getParameter("usrId");
		String password = request.getParameter("password");
		String name	= request.getParameter("name");
		String email = request.getParameter("email");
		
		User user = new User(userId, password, name, email);
		UserDao userDao = new UserDao();
		
		try {
			userDao.addUser(user);
		} catch(Exception e) {
			log.debug(e.toString());
		}
		response.sendRedirect("/");
	}

}
