package com.batch.fourteen.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.batch.fourteen.dao.UserDao;
import com.batch.fourteen.model.User;
import com.batch.fourteen.service.IUserService;

@Service
public class UserService implements IUserService {

	private final static Logger logger = Logger.getLogger(UserService.class);
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public User getUser(User user) {
		return userDao.selectUser(user);
	}

	@Override
	public List<User> getAllUsers() {
		return userDao.selectAllUsers();
	}

}
