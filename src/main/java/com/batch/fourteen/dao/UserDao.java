package com.batch.fourteen.dao;

import java.util.List;

import com.batch.fourteen.model.User;

public interface UserDao {

	List<User> selectAllUsers();
	
	User selectUser(User user);
}
