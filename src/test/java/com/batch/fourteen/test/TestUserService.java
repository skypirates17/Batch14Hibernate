package com.batch.fourteen.test;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.batch.fourteen.model.Message;
import com.batch.fourteen.model.User;
import com.batch.fourteen.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:dispatcher-servlet.xml")
public class TestUserService {
	
	private final Logger logger = Logger.getLogger(TestUserService.class);
	
	@Autowired
	private IUserService userService;
	
	public void testGetAllUsers() {
		for(User user:userService.getAllUsers()){
			print(user);
		}
	}
	
	@Test
	public void testGetUser() {
		User userParam = new User();
		userParam.setIp("192.168.1.2");
		
		User user = userService.getUser(userParam);
		print(user);
	}
	
	private void print(User user) {
		logger.debug(user.getName());
		logger.debug(user.getIp());
		logger.debug("MESSAGE" + user.getMessages());
		for (Message message : user.getMessages()) {
			logger.debug(message.getIdTo() +"-->"+message.getMessage());
		}
	}
}
