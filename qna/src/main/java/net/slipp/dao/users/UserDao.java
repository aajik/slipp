package net.slipp.dao.users;

import java.sql.SQLException;
import java.sql.ResultSet;

import javax.annotation.PostConstruct;


import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.jdbc.datasource.init.DatabasePopulatorUtils;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;

import net.slipp.domain.users.User;

public class UserDao extends JdbcDaoSupport{
	@PostConstruct
	public void initialize() {
		ResourceDatabasePopulator populator = new ResourceDatabasePopulator();
		populator.addScript(new ClassPathResource("slipp.sql"));
		DatabasePopulatorUtils.execute(populator, getDataSource());
		
	}
	
	public User findById(String userId) {
		RowMapper<User> rowMapper = new RowMapper<User>() {		
			@Override
			public User mapRow(ResultSet rs, int rowNum)  throws SQLException{
				// TODO Auto-generated method stub
				return null;
			}
		};
		return null;
	}
}
