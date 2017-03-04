package com.batch.fourteen.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.batch.fourteen.dao.UserDao;
import com.batch.fourteen.model.User;

@Transactional
@SuppressWarnings("unchecked")
@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSessionFactory() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public List<User> selectAllUsers() {
		Query query = this.getSessionFactory().createQuery("from User where deleteFlag=0");
		List<User> usersList = query.list();
		return usersList;
	}

	@Override
	public User selectUser(User user) {
		Query query = this.getSessionFactory().createQuery("from User where ip=:userip");
		query.setParameter("userip", user.getIp());
		return (User) query.uniqueResult();
	}

}
