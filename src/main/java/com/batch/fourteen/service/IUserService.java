package com.batch.fourteen.service;

import java.util.List;

import com.batch.fourteen.model.User;

public interface IUserService {

	List<User> getAllUsers();
	
	User getUser(User user);
}
