package net.slipp.dao.users;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

//import java.nio.file.attribute.UserDefinedFileAttributeView;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import net.slipp.domain.users.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/applicationContext.xml")
public class UserDaoTest {
	private static final Logger log = LoggerFactory.getLogger(UserDaoTest.class);
	
	@Autowired
	private UserDao userDao;
	
	@Test
	public void fineById() {
		User user = userDao.findById("javajigi");
		System.out.println("\n");
		log.debug("User : {}", user);
		System.out.println("\n");
	}
	@Test
	public void create() throws Exception {
		User user = new User("sanjigi", "password", "산지기", "sanjigi@abc.com");
		userDao.create(user);
		User actual = userDao.findById(user.getUserId());
		log.debug("dbUser : {}", actual);
	    
		assertThat(actual, is(user));
		
	}


}
