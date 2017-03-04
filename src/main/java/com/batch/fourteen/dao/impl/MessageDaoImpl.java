package com.batch.fourteen.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.batch.fourteen.dao.MessageDao;
import com.batch.fourteen.model.Message;

@Transactional
@SuppressWarnings("unchecked")
@Repository
public class MessageDaoImpl implements MessageDao {

	@Autowired
	private SessionFactory sessionFactory;

	public Session getSessionFactory() {
		return sessionFactory.getCurrentSession();
	}
	
	@Override
	public void insertMessage(Message message) {
		this.getSessionFactory().save(message);
	}

}
