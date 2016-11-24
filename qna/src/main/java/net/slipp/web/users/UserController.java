package net.slipp.web.users;

import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.slipp.dao.users.UserDao;
import net.slipp.domain.users.Authenticate;
import net.slipp.domain.users.User;

@Controller
public class UserController {
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserDao userDao;
	
	// 위와 같은 방법이다.
	/*
	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
    */
	
	//@RequestMapping(value="/users/form", method=RequestMethod.GET)	// 위와 같다.
	@RequestMapping("/users/form")
	public String form(Model model) {
		model.addAttribute("user", new User() ); 

		return "users/form";
	}
	
	//@RequestMapping(value="/users/form", method=RequestMethod.GET)	// 위와 같다.
	@RequestMapping("/users/login")
	public String loginform(Model model) {
		model.addAttribute("authenticate", new Authenticate() );
		return "users/login";
	}
		
	// Method를 지정하지 않으면 기본은 get방식이다.
	// public String create(String userId, String password, String name, String email) {
	// 데이타를 받는 부분을 클래스로 만들어서. 처리할 수 있으면 칼럼 추가, 삭제 될 때 편리한다.
	@RequestMapping(value="/users", method=RequestMethod.POST)
	public String create(@Valid User user, BindingResult bindingResult) {		// ctrl+shift+M or O
		log.debug("User : {}", user);
		if(bindingResult.hasErrors()) {
			log.debug("Binding Result has Error");
			List<ObjectError> errors = bindingResult.getAllErrors();
			for(ObjectError error : errors) {
				log.debug("error : {},{} ", error.getCodes(), error.getDefaultMessage());
			}
			return "users/form";
		}
		userDao.create(user);
		log.debug("Database : {}", user);
		log.debug("Database : {}", userDao.findById(user.getUserId()));
		return "redirect:/";
	}
}
