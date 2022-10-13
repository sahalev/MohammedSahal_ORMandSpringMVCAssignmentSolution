package com.gl.assignment3.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gl.assignment3.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO  {
	
	@Autowired
	SessionFactory factory;

	@Override
	@Transactional
	public void saveCustomer(Customer cus) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(cus);
		
	}

	@Override
	@Transactional
	public void deleteCustomer(int id) {
		Session session = factory.getCurrentSession();
		Customer cus = session.get(Customer.class, id);
		session.delete(cus);
		
	}

	@Override
	@Transactional
	public Customer findById(int id) {
		Session session = factory.getCurrentSession();
		Customer cus = session.get(Customer.class, id);
		return cus;
	}

	@Override
	@Transactional
	public List<Customer> findAll() {
		Session session = factory.getCurrentSession();
		Criteria c = session.createCriteria(Customer.class);
		return c.list();
	}
	
	

}
